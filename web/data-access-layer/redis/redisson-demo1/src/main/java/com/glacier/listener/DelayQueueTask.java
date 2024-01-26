package com.glacier.listener;

import com.glacier.entity.CacheRemoveDelayEvent;
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
import java.util.concurrent.DelayQueue;

/**
 * date 2024-01-26 14:43
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class DelayQueueTask implements ApplicationRunner {
    @Resource
    private DelayQueue<CacheRemoveDelayEvent> delayQueue;
    @Resource
    private ThreadPoolTaskExecutor taskExecutor;
    @Resource
    private CacheManager cacheManager;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        Thread thread = new Thread(() -> {
            while (true) {
                try {
                    log.info("2开始消费任务");
                    CacheRemoveDelayEvent event = delayQueue.take();
                    taskExecutor.submit(() -> {
                        log.info("2开始删除缓存：{}", event);
                        Objects.requireNonNull(cacheManager.getCache(event.getCacheName()))
                                .evictIfPresent(event.getKey());

                    });
                    log.info("2结束消费任务");
                } catch (InterruptedException e) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException ex) {
                        throw new RuntimeException(ex);
                    }
                }
            }
        });
        thread.setName("delay-线程");
        thread.start();
    }
}
