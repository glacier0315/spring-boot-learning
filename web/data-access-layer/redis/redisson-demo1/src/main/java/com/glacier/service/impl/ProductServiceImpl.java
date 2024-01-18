package com.glacier.service.impl;

import com.glacier.entity.Product;
import com.glacier.service.ProductService;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.redisson.api.RedissonClient;
import org.redisson.client.codec.StringCodec;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.LongAdder;
import java.util.stream.Collectors;

/**
 * date 2024-01-16 14:03
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
@CacheConfig(cacheNames = "product")
public class ProductServiceImpl implements ProductService {
    public static final Map<Long, Product> PRODUCT_MAP = new ConcurrentHashMap<>(16);
    public static final long MAX_DATA = 10000;

    @Resource
    private RedissonClient redissonClient;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    private RBloomFilter<String> bloomFilter;

    private static LongAdder count = new LongAdder();

    /**
     * 非法请求所返回的JSON
     */
    static String illegalJson = """
            [com.glacier.entity.Product, {id:null}]
            """;

    //    @PostConstruct
    public void init() {
        initBloomFilter();
        initData();
    }

    @PostConstruct
    public void initBloomFilter() {
        log.info("ProductService 布隆过滤器初始化");
        // 定义一个布隆过滤器，指定布隆过滤器的名称
        bloomFilter = redissonClient.getBloomFilter("product");
        //定义布隆过滤器的大小，以及误差率
        bloomFilter.tryInit(100000L, 0.003);

        log.info("ProductService 布隆过滤器数据预热");
        for (long i = 0; i < MAX_DATA; i++) {
            bloomFilter.add("id_" + i);
        }
    }

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

    @Override
    public int deleteById(Long id) {
        if (PRODUCT_MAP.containsKey(id)) {
            PRODUCT_MAP.remove(id);
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

    @Cacheable(key = "'id_' + #id")
    @Override
    public Product getById1(Long id) {
        log.info("访问数据库");
        return PRODUCT_MAP.get(id);
    }

    @Cacheable(key = "'id_' + #id", unless = "#result==null")
    @Override
    public Product getById2(Long id) {
        log.info("访问数据库");
        return PRODUCT_MAP.get(id);
    }

    @Override
    public Product findById(Long id) {
        String key = "id_" + id;
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
            SecureRandom random = new SecureRandom();
            redissonClient.getBucket("product::id_" + id, new StringCodec()).set(illegalJson, random.nextInt(200) + 300, TimeUnit.SECONDS);
            return null;
        }
        Object object = redissonClient.getBucket("product::id_" + id, new StringCodec()).get();
        if (object != null) {
            log.info("缓存中存在");
            return (Product) object;
        }
        log.info("不是非法访问，可以访问数据库");
        return PRODUCT_MAP.get(id);
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
}