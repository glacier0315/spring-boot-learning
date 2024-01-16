package com.glacier.service;

import jakarta.annotation.Resource;
import org.junit.jupiter.api.*;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.StopWatch;

import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-16 22:10
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("库存测试")
@SpringBootTest
class StockServiceTest {

    @Resource
    private StockService stockService;

    private static ThreadPoolExecutor executor = null;

    private final StopWatch stopWatch = new StopWatch();

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
        stopWatch.start();
    }

    @AfterEach
    void tearDown() {
        stopWatch.stop();
        System.out.println(stopWatch.prettyPrint());
    }

    @DisplayName("未加锁")
    @Test
    void addClock() {
        int max = 200;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                stockService.addStock(key, 1);
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            Assertions.assertEquals(max, stockService.getStock(key));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("分布式锁1")
    @Test
    void addSyncStock1() {
        int max = 500;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                stockService.addSyncStock1(key, 1);
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            Assertions.assertEquals(max, stockService.getStock(key));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("分布式锁2")
    @Test
    void addSyncStock2() {
        int max = 500;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                stockService.addSyncStock2(key, 1);
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            Assertions.assertEquals(max, stockService.getStock(key));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("分布式锁3")
    @Test
    void addSyncStock3() {
        int max = 500;
        CountDownLatch countDownLatch = new CountDownLatch(max);
        String key = UUID.randomUUID().toString();
        System.out.println("key:\t" + key);
        for (int i = 0; i < max; i++) {
            executor.execute(() -> {
                stockService.addSyncStock3(key, 1);
                countDownLatch.countDown();
            });
        }
        try {
            countDownLatch.await();
            Assertions.assertEquals(max, stockService.getStock(key));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
