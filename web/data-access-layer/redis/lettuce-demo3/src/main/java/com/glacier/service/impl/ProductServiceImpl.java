package com.glacier.service.impl;

import com.glacier.entity.Product;
import com.glacier.entity.User;
import com.glacier.service.ProductService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public static final Map<String, Product> USER_MAP = new HashMap<>(16);
    @Resource
    private RedisTemplate redisTemplate;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    @Override
    public int save(Product product) {
        return 0;
    }

    @Override
    public int update(Product product) {
        return 0;
    }

    @Override
    public Product getProductById(Long id) {
        return null;
    }

    @Override
    public Product getProductByName(String name) {
        return null;
    }

    @Override
    public Product getProductByCode(String code) {
        return null;
    }

    @Override
    public List<Product> findList(Product product) {
        return null;
    }
}
