package com.glacier.cache;

import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;

import java.util.Collection;

/**
 * date 2024-01-16 16:25
 *
 * @author glacier
 * @version 1.0
 */
public class EnhancedCacheManager implements CacheManager {

    private final CacheManager cacheManager;

    public EnhancedCacheManager(CacheManager cacheManager) {
        this.cacheManager = cacheManager;
    }

    @Override
    public Cache getCache(String name) {
        return new ListenableCache(cacheManager.getCache(name));
    }

    @Override
    public Collection<String> getCacheNames() {
        return cacheManager.getCacheNames();
    }
}
