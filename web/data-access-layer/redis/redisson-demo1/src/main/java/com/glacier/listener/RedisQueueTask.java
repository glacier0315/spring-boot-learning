package com.glacier.listener;

import com.glacier.entity.CacheRemoveEvent;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RBlockingQueue;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.cache.CacheManager;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Component;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-26 14:43
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class RedisQueueTask implements ApplicationRunner {
    @Resource
    private RBlockingQueue<CacheRemoveEvent> rBlockingQueue;
    @Resource
    private ThreadPoolTaskExecutor taskExecutor;
    @Resource
    private CacheManager cacheManager;
    @Override
    public void run(ApplicationArguments args) throws Exception {
        Thread thread = new Thread(() -> {
            while (true) {
                try {
                    log.info("1 开始消费任务");
                    CacheRemoveEvent event = rBlockingQueue.take();
                    taskExecutor.submit(() -> {
                        log.info("1 开始删除缓存：{}", event);
                        Objects.requireNonNull(cacheManager.getCache(event.getCacheName()))
                                .evictIfPresent(event.getKey());

                    });
                    log.info("1 结束消费任务");
                } catch (InterruptedException e) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException ex) {
                        throw new RuntimeException(ex);
                    }
                }
            }
        });
        thread.setName("redis-线程");
        thread.setDaemon(true);
        thread.start();
    }
}
