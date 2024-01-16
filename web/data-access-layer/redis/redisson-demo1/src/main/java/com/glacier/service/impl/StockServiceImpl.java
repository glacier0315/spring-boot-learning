package com.glacier.service.impl;

import com.glacier.service.StockService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-16 22:05
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class StockServiceImpl implements StockService {

    private final Map<String, Long> STOCK_MAP = new ConcurrentHashMap<>(16);

    @Resource
    private RedissonClient redissonClient;

    @Override
    public void addStock(String key, long count) {
        long stockCount = STOCK_MAP.getOrDefault(key, 0L);
        stockCount += count;
        // 更新
        STOCK_MAP.put(key, stockCount);
    }

    @Override
    public void addSyncStock1(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            // 获取锁，会阻塞
            lock.lock();
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    @Override
    public void addSyncStock2(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            // 10秒后自动解锁，会阻塞
            lock.lock(10L, TimeUnit.SECONDS);
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    @Override
    public void addSyncStock3(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            // 100秒内获取锁成功，则返回true，否则返回false，不会阻塞
            // 获取所成功后，10秒后自动解锁
            boolean tryLock = lock.tryLock(100L, 10L, TimeUnit.SECONDS);
            if (!tryLock) {
                throw new RuntimeException("获取锁失败");
            }
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    @Override
    public long getStock(String key) {
        return STOCK_MAP.getOrDefault(key, 0L);
    }
}
