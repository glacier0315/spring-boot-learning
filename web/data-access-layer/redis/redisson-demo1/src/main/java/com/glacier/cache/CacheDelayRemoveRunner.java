package com.glacier.cache;

import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.cache.CacheManager;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.Objects;

/**
 * date 2024-01-26 16:04
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class CacheDelayRemoveRunner implements ApplicationRunner {

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;
    @Resource
    private CacheManager cacheManager;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        Thread thread = new Thread(() -> {
            while (true) {
                try {
                    CacheDelayTrigger event = CacheEventListener.DELAY_QUEUE.take();
                    Runnable task = () -> {
                        switch (event.getType()) {
                            case EVICT:
                                Objects.requireNonNull(cacheManager.getCache(event.getCacheName()))
                                        .evictIfPresent(event.getKey());
                                break;
                            case CLEAR:
                                Objects.requireNonNull(cacheManager.getCache(event.getCacheName()))
                                        .clear();
                                break;
                            default:
                                break;
                        }
                        log.info("执行缓存延迟移除任务：{}", event);
                    };
                    taskExecutor.submit(task);
                } catch (InterruptedException e) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException ex) {
                        throw new RuntimeException(ex);
                    }
                }
            }
        });
        thread.setName("cache delay-线程");
        thread.start();
    }
}
