package com.glacier;

import jakarta.annotation.Resource;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.redisson.api.RLock;
import org.redisson.api.RReadWriteLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.concurrent.TimeUnit;

/**
 * date 2021-09-27 15:35
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RedisTest {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Resource
    private RedissonClient redissonClient;

    @DisplayName("测试redisTemplate")
    @Test
    void test1() {
        System.out.println(redisTemplate);
        redisTemplate.opsForValue().set("aaa", "123");
        redisTemplate.opsForValue().set("aaa1", "123");
        redisTemplate.delete("aaa1");
    }

    @DisplayName("Redisson 锁")
    @Test
    void test2() {
        RLock lock = null;
        // 1. 普通的可重入锁
        lock = redissonClient.getLock("generalLock");

        try {
            // 拿锁失败时会不停的重试
            // 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
            lock.lock();
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }


        // 尝试拿锁10s后停止重试,返回false
        // 具有Watch Dog 自动延期机制 默认续30s
        try {
            boolean res1 = lock.tryLock(10, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            if (lock.isLocked()) {
                lock.unlock();
            }
        }

        try {
            // 拿锁失败时会不停的重试
            // 没有Watch Dog ，10s后自动释放
            lock.lock(10, TimeUnit.SECONDS);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }

        try {
            // 尝试拿锁100s后停止重试,返回false
            // 没有Watch Dog ，10s后自动释放
            boolean res2 = lock.tryLock(100, 10, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            if (lock != null && lock.isLocked()) {
                lock.unlock();
            }
        }

        // 2. 公平锁 保证 Redisson 客户端线程将以其请求的顺序获得锁
        RLock fairLock = redissonClient.getFairLock("fairLock");
        try {
            // 拿锁失败时会不停的重试
            // 具有Watch Dog 自动延期机制 默认续30s 每隔30/3=10 秒续到30s
            fairLock.lock();
        } finally {
            if (fairLock != null && fairLock.isLocked()) {
                fairLock.unlock();
            }
        }

        // 3. 读写锁 没错与JDK中ReentrantLock的读写锁效果一样
        RReadWriteLock readWriteLock = redissonClient.getReadWriteLock("readWriteLock");
        RLock rLock = readWriteLock.readLock();
        try {
            rLock.lock();
        } finally {
            if (rLock.isLocked()) {
                rLock.unlock();
            }
        }

        RLock wRLock = readWriteLock.writeLock();
        try {
            wRLock.lock();
        } finally {
            if (wRLock.isLocked()) {
                wRLock.unlock();
            }
        }
    }
}
