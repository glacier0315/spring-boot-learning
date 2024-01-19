package com.glacier.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.entity.Product;
import com.glacier.enums.CacheConfigEnums;
import com.glacier.service.ProductService;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.redisson.api.RBucket;
import org.redisson.api.RedissonClient;
import org.redisson.codec.JsonJacksonCodec;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.security.SecureRandom;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.LongAdder;
import java.util.stream.Collectors;

/**
 * date 2024-01-16 14:03
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@CacheConfig(cacheNames = "product")
@Service
public class ProductServiceImpl implements ProductService {
    public static final Map<Long, Product> PRODUCT_MAP = new ConcurrentHashMap<>(16);
    public static final long MAX_DATA = 10000;

    @Resource
    private RedissonClient redissonClient;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;
    @Resource
    private ObjectMapper objectMapper;

    private RBloomFilter<String> bloomFilter;

    private static LongAdder count = new LongAdder();

    @Order(3)
    @PostConstruct
    public void initData() {
        log.info("ProductService 数据初始化");
        for (long i = 0; i < MAX_DATA; i++) {
            PRODUCT_MAP.put(i, Product.builder()
                    .id(i)
                    .name("name" + i)
                    .productSn("productSn" + i)
                    .build());
        }
        count.add(MAX_DATA);
    }

    @Order(2)
    @PostConstruct
    public void initBloomFilter() {
        log.info("ProductService 布隆过滤器初始化");
        // 定义一个布隆过滤器，指定布隆过滤器的名称
        bloomFilter = redissonClient.getBloomFilter("product");
        //定义布隆过滤器的大小，以及误差率
        bloomFilter.tryInit(100000L, 0.003);
    }

    @Order(1)
    @PostConstruct
    public void initBloomFilterData() {
        log.info("ProductService 布隆过滤器数据预热");
        if (bloomFilter != null) {
            for (long i = 0; i < MAX_DATA; i++) {
                bloomFilter.add("id2_" + i);
            }
        }
    }

    @Override
    public int deleteById(Long id) {
        if (PRODUCT_MAP.containsKey(id)) {
//            PRODUCT_MAP.remove(id);
            String key = "id_" + id;
//            RMapCache<String, Product> cache = redissonClient.getMapCache(getKeyPrefix(), new JsonJacksonCodec(objectMapper));
//            log.info("查询缓存 {}", cache.get(key));
//            cache.remove(key);
            RBucket<Object> bucket = redissonClient.getBucket(getKeyPrefix() + key, new JsonJacksonCodec(objectMapper));
            log.info("查询缓存 {}", bucket.get());
            bucket.deleteAsync();
            return 1;
        }
        return 0;
    }

    @Override
    public int save(Product product) {
        count.increment();
        // 设置id
        product.setId(count.longValue());
        PRODUCT_MAP.put(product.getId(), product);
        return 1;
    }

    @Override
    public int update(Product product) {
        if (PRODUCT_MAP.containsKey(product.getId())) {
            PRODUCT_MAP.put(product.getId(), product);
            return 1;
        }
        return 0;
    }

    @Cacheable(key = "'id1_' + #id")
    @Override
    public Product getById1(Long id) {
        log.info("访问数据库");
        return PRODUCT_MAP.get(id);
    }

    /**
     * 设置unless = "#result==null"并在非法访问的时候返回null的目的是不将该次查询返回的null使用
     * RedissonConfig-->RedisCacheManager-->RedisCacheConfiguration-->entryTtl设置的过期时间存入缓存。
     *
     * @param id
     * @return
     */
    @Cacheable(key = "'id1_' + #id", unless = "#result==null")
    @Override
    public Product getById2(Long id) {
        log.info("访问数据库");
        return PRODUCT_MAP.get(id);
    }

    @Override
    public Product findById(Long id) {
        String key = "id2_" + id;
        SecureRandom random = new SecureRandom();
        RBucket<Object> bucket = redissonClient.getBucket(getKeyPrefix() + key, new JsonJacksonCodec(objectMapper));
        if (!bloomFilter.contains(key)) {
            log.info("所要查询的数据既不在缓存中，也不在数据库中，为非法key");
            /*
             * 设置unless = "#result==null"并在非法访问的时候返回null的目的是不将该次查询返回的null使用
             * RedissonConfig-->RedisCacheManager-->RedisCacheConfiguration-->entryTtl设置的过期时间存入缓存。
             *
             * 因为那段时间太长了，在那段时间内可能该非法key又添加到bloomFilter，比如之前不存在id为1234567的用户，
             * 在那段时间可能刚好id为1234567的用户完成注册，使该key成为合法key。
             *
             * 所以我们需要在缓存中添加一个可容忍的短期过期的null或者是其它自定义的值,使得短时间内直接读取缓存中的该值。
             *
             * 因为Spring Cache本身无法缓存null，因此选择设置为一个其中所有值均为null的JSON，
             */
            bucket.set(null, Duration.ofSeconds(random.nextInt(200) + 300));
            return null;
        }
        Object object = bucket.get();
        if (object != null) {
            log.info("缓存中存在");
            return (Product) object;
        }
        log.info("不是非法访问，可以访问数据库");
        Product product = PRODUCT_MAP.get(id);
        bucket.set(product);
        bloomFilter.add(key);
        return product;
    }

    @Cacheable(key = "'name_' + #name")
    @Override
    public List<Product> findByName(String name) {
        if (name == null || name.isBlank()) {
            return new ArrayList<>(16);
        }
        return PRODUCT_MAP.values()
                .stream()
                .filter(e -> Objects.equals(e.getName(), name))
                .collect(Collectors.toList());
    }

    @Override
    public List<Product> findList(Product product) {
        if (product == null || product.getName() == null || product.getName().isBlank()) {
            return new ArrayList<>(PRODUCT_MAP.values());
        }
        return PRODUCT_MAP.values()
                .stream()
                .filter(e -> Objects.equals(e.getName(), product.getName()))
                .collect(Collectors.toList());
    }

    /**
     * 获取缓存前缀
     *
     * @return
     */
    private String getCachePrefix() {
        return CacheConfigEnums.COMMON_CACHE_KEY + CacheConfigEnums.PRODUCT_CACHE.getCacheName();
    }

    /**
     * 获取缓存key前缀
     *
     * @return
     */
    private String getKeyPrefix() {
        return getCachePrefix() + "::";
    }
}
