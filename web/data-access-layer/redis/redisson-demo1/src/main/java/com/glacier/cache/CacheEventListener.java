package com.glacier.cache;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;

import java.util.concurrent.DelayQueue;

/**
 * date 2024-01-16 15:33
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class CacheEventListener {

    /**
     * 延迟队列
     */
    public static final DelayQueue<CacheDelayTrigger> DELAY_QUEUE = new DelayQueue<>();
    /**
     * 缓存
     */
    private final Cache cache;

    public CacheEventListener(Cache cache) {
        this.cache = cache;
    }


    public void evictCache(Cache cache, Object key) {
        DELAY_QUEUE.put(new CacheDelayTrigger(CacheOperation.EVICT, cache.getName(), key, 1000));

    }

    public void clearCache(Cache cache) {
        DELAY_QUEUE.put(new CacheDelayTrigger(CacheOperation.CLEAR, cache.getName(), 1000));
    }
}
