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
        //  普通的可重入锁
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 拿锁失败时会不停的重试
             * 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
             */
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
            /*
             * 拿锁失败时会不停的重试
             * 没有Watch Dog ，10s后自动释放
             */
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
            /*
             * 尝试拿锁100s后停止重试,返回false
             * 具有Watch Dog 自动延期机制 默认续30s
             */
            boolean tryLock = lock.tryLock(100L, TimeUnit.SECONDS);
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
    public void addSyncStock4(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 尝试拿锁100s后停止重试,返回false
             * 没有Watch Dog ，10s后自动释放
             */
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
    public void addSyncStock5(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 拿锁失败时会不停的重试
             * 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
             */
            lock.lock();
            log.info("addSyncStock5: {}", key);
            Thread.sleep(1000L);
            addSyncStockSub(key, count);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    public void addSyncStockSub(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 拿锁失败时会不停的重试
             * 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
             */
            lock.lock();
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
            log.info("addSyncStockSub: {}", key);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    @Override
    public void addSyncStock6(String key, long count) {
        //  普通的可重入锁
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 拿锁失败时会不停的重试
             * 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
             */
            lock.lock();
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
            Thread.sleep(30000L);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }
    }

    @Override
    public void addSyncStock7(String key, long count) {
        RLock lock = redissonClient.getLock(key);
        try {
            /*
             * 尝试拿锁100s后停止重试,返回false
             * 具有Watch Dog 自动延期机制 默认续30s
             */
            boolean tryLock = lock.tryLock(100L, TimeUnit.SECONDS);
            if (!tryLock) {
                throw new RuntimeException("获取锁失败");
            }
            long stockCount = STOCK_MAP.getOrDefault(key, 0L);
            stockCount += count;
            // 更新
            STOCK_MAP.put(key, stockCount);
            Thread.sleep(30000L);
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
