package com.glacier.cache;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;

import java.util.concurrent.*;

/**
 * date 2024-01-16 15:33
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class CacheEventListener {
    private final ThreadPoolExecutor executor;

    public CacheEventListener() {
        executor = initThreadPool();
    }

    private ThreadPoolExecutor initThreadPool() {
        SynchronousQueue<Runnable> workQueue = new SynchronousQueue<>();
        ThreadFactory threadFactory = r -> {
            Thread thread = new Thread(r);
            thread.setName("glacier-cache-clear-thread");
            return thread;
        };
        RejectedExecutionHandler defaultHandler = new ThreadPoolExecutor.AbortPolicy();
        return new ThreadPoolExecutor(0,
                Integer.MAX_VALUE,
                60L,
                TimeUnit.SECONDS,
                workQueue,
                threadFactory,
                defaultHandler);
    }


    public void evictCache(Cache cache, Object key) {
        cache.evict(key);
        log.info("缓存删除：{}, {}", cache.getName(), key);
        executor.execute(() -> {
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            cache.evict(key);
            log.info("缓存延迟删除：{}, {}", cache.getName(), key);
        });

    }

    public void clearCache(Cache cache) {
        cache.clear();
        log.info("缓存清空：{}", cache.getName());
        executor.execute(() -> {
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            cache.clear();
            log.info("缓存延迟清空：{}", cache.getName());
        });
    }
}
