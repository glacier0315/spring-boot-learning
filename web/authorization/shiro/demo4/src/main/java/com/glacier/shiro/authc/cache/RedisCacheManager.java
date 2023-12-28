/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.glacier.shiro.authc.cache;

import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.apache.shiro.cache.CacheManager;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * 自定义授权缓存管理类
 *
 * @author ThinkGem
 * @version 2014-7-20
 */
public class RedisCacheManager implements CacheManager {

    private final RedisTemplate<Object, Object> redisTemplate;
	
	public RedisCacheManager(RedisTemplate<Object, Object> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}
	
	@Override
    public <K, V> Cache<K, V> getCache(String name) throws CacheException {
        return new RedisCache<>(redisTemplate, name);
    }
}
