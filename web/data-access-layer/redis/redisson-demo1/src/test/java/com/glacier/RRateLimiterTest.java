package com.glacier;

import jakarta.annotation.Resource;
import org.junit.jupiter.api.*;
import org.redisson.api.RRateLimiter;
import org.redisson.api.RateIntervalUnit;
import org.redisson.api.RateType;
import org.redisson.api.RedissonClient;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * date 2024-01-17 10:52
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("测试限流器")
@SpringBootTest
class RRateLimiterTest {

    @Resource
    private RedissonClient redissonClient;

    private static ThreadPoolExecutor executor = null;

    @BeforeAll
    static void beforeAll() {
        executor = new ThreadPoolExecutor(0,
                Integer.MAX_VALUE,
                60L,
                TimeUnit.SECONDS,
                new SynchronousQueue<Runnable>(),
                r -> {
                    Thread thread = new Thread(r);
                    thread.setName("glacier-cache-clear-thread");
                    return thread;
                },
                new ThreadPoolExecutor.AbortPolicy());

    }

    @AfterAll
    static void afterAll() {
        executor.shutdown();
    }

    @BeforeEach
    void setUp() {

    }


    @AfterEach
    void tearDown() {

    }


    @DisplayName("方式一")
    @Test
    void rRateLimiter1() {
        int max = 100;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        AtomicInteger successCount = new AtomicInteger(0);
        AtomicInteger failedCount = new AtomicInteger(0);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
                RRateLimiter rateLimiter = redissonClient.getRateLimiter(key);
                rateLimiter.setRate(RateType.OVERALL, 3, 1, RateIntervalUnit.SECONDS);
                boolean tryAcquire = rateLimiter.tryAcquire(1, 1, TimeUnit.SECONDS);
                if (tryAcquire) {
                    successCount.incrementAndGet();
                } else {
                    failedCount.incrementAndGet();
                }
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            System.out.println("成功：" + successCount.get() + "\t失败：" + failedCount.get());
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("方式二")
    @Test
    void rRateLimiter2() {
        int max = 100;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        AtomicInteger successCount = new AtomicInteger(0);
        AtomicInteger failedCount = new AtomicInteger(0);
        AtomicInteger counter = new AtomicInteger(0);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
                RRateLimiter rateLimiter = redissonClient.getRateLimiter(key);
                boolean trySetRate = rateLimiter.trySetRate(RateType.OVERALL, 3, 1, RateIntervalUnit.SECONDS);
                if (trySetRate) {
                    counter.incrementAndGet();
                }
                boolean tryAcquire = rateLimiter.tryAcquire(1, 1, TimeUnit.SECONDS);
                if (tryAcquire) {
                    successCount.incrementAndGet();
                } else {
                    failedCount.incrementAndGet();
                }
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            System.out.println("令牌设置成功：" + counter.get());
            System.out.println("成功：" + successCount.get() + "\t失败：" + failedCount.get());
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
