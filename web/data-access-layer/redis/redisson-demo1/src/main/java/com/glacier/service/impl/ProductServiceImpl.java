package com.glacier.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.entity.CacheRemoveDelayEvent;
import com.glacier.entity.CacheRemoveEvent;
import com.glacier.entity.Product;
import com.glacier.enums.CacheConfigEnums;
import com.glacier.service.ProductService;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBloomFilter;
import org.redisson.api.RDelayedQueue;
import org.redisson.api.RMapCache;
import org.redisson.api.RedissonClient;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.DelayQueue;
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
@CacheConfig(cacheNames = "product")
@Service
public class ProductServiceImpl implements ProductService {
    public static final Map<Long, Product> PRODUCT_MAP = new ConcurrentHashMap<>(16);
    public static final long MAX_DATA = 10000;

    @Resource
    private RedissonClient redissonClient;
    @Resource
    private ObjectMapper objectMapper;
    @Resource
    private RDelayedQueue<CacheRemoveEvent> rDelayedQueue;
    @Resource
    DelayQueue<CacheRemoveDelayEvent> delayQueue;
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
                    .promotionStartTime(LocalDateTime.now())
                    .build());
        }
        count.add(MAX_DATA);
    }

    @Order(2)
    @PostConstruct
    public void initBloomFilter() {
        log.info("ProductService 布隆过滤器初始化");
        // 定义一个布隆过滤器，指定布隆过滤器的名称
        bloomFilter = redissonClient.getBloomFilter("product_bl");
        //定义布隆过滤器的大小，以及误差率
        bloomFilter.tryInit(100000L, 0.003);
    }

    @Order(1)
    @PostConstruct
    public void initBloomFilterData() {
        log.info("ProductService 布隆过滤器数据预热");
        if (bloomFilter != null) {
            for (long i = 0; i < MAX_DATA; i++) {
                bloomFilter.add("id_" + i);
            }
        }
    }

    @Override
    public int deleteById(Long id) {
        if (PRODUCT_MAP.containsKey(id)) {
            String key = "id_" + id;
            RMapCache<String, Product> mapCache = getCache();
            log.info("查询缓存1 {}", mapCache.get(key));
            mapCache.remove(key);
            log.info("查询缓存2 {}", mapCache.get(key));
            // 删除数据
            System.out.println("删除数据");
            // 再次,延迟删除缓存
            rDelayedQueue.offer(new CacheRemoveEvent(CacheConfigEnums.PRODUCT_CACHE.getCacheName(), key), 500, TimeUnit.MILLISECONDS);
//            delayQueue.put(new CacheRemoveDelayEvent(CacheConfigEnums.PRODUCT_CACHE.getCacheName(), key, 500));
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

    /**
     * 设置unless = "#result==null"并在非法访问的时候返回null的目的是不将该次查询返回的null使用
     * RedissonConfig-->RedisCacheManager-->RedisCacheConfiguration-->entryTtl设置的过期时间存入缓存。
     *
     * @param id
     * @return
     */
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
            return null;
        }
        SecureRandom random = new SecureRandom();
        RMapCache<String, Product> mapCache = getCache();
        Product object = mapCache.get(key);
        if (object != null) {
            log.info("缓存中存在");
            return object;
        }
        log.info("不是非法访问，可以访问数据库");
        Product product = PRODUCT_MAP.get(id);
        mapCache.put(key, product, random.nextLong(200L) + 300, TimeUnit.MINUTES);
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

    private RMapCache<String, Product> getCache() {
        return redissonClient.getMapCache(CacheConfigEnums.PRODUCT_CACHE.getCacheName());
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
