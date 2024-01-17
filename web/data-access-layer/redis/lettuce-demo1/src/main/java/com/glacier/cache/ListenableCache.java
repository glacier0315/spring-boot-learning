package com.glacier.cache;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;

import java.util.concurrent.Callable;

/**
 * date 2024-01-16 15:34
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class ListenableCache implements Cache {
    private final Cache cache;
    private final CacheEventListener cacheEventListener;

    public ListenableCache(Cache cache) {
        this.cache = cache;
        this.cacheEventListener = new CacheEventListener();
    }

    @Override
    public String getName() {
        return cache.getName();
    }

    @Override
    public Object getNativeCache() {
        return cache.getNativeCache();
    }

    @Override
    public ValueWrapper get(Object key) {
        return cache.get(key);
    }

    @Override
    public <T> T get(Object key, Class<T> type) {
        return cache.get(key, type);
    }

    @Override
    public <T> T get(Object key, Callable<T> valueLoader) {
        return cache.get(key, valueLoader);
    }

    @Override
    public void put(Object key, Object value) {
        cache.put(key, value);
    }

    @Override
    public void evict(Object key) {
        cacheEventListener.evictCache(cache, key);
    }

    @Override
    public void clear() {
        cacheEventListener.clearCache(cache);
    }
}
