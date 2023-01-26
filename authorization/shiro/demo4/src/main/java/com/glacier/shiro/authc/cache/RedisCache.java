package com.glacier.shiro.authc.cache;

import com.glacier.shiro.utils.ServletUtils;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.RedisTemplate;

import jakarta.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;

/**
 * 自定义授权缓存管理类
 *
 * @author ThinkGem
 * @version 2014-7-20
 */
public class RedisCache<K, V> implements Cache<K, V> {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RedisCache.class);
	
	private final RedisTemplate<Object, Object> redisTemplate;
	private final String cacheName;
	
	public RedisCache(RedisTemplate<Object, Object> redisTemplate, String cacheName) {
		this.redisTemplate = redisTemplate;
		this.cacheName = cacheName;
	}
	
	@SuppressWarnings({"unchecked"})
	@Override
	public V get(K key) throws CacheException {
		if (key == null) {
			LOGGER.info("get key为空");
			return null;
		}
		V value;
		HttpServletRequest request = ServletUtils.getRequest();
		if (request != null) {
			value = (V) request.getAttribute(cacheName + key);
			if (value != null) {
				LOGGER.info("get {} {} {} {}", this.cacheName, key, value, request.getRequestURI());
				return value;
			}
		}
		
		value = (V) redisTemplate.boundHashOps(cacheName)
				.get(key);
		LOGGER.info("缓存区 {} 获取缓存 {} -> {}, request: {}", this.cacheName, key, value, request != null ? request.getRequestURI() : "");
		if (request != null && value != null) {
			request.setAttribute(this.cacheName + key, value);
		}
		
		return value;
	}
	
	@Override
	public V put(K key, V value) throws CacheException {
		LOGGER.info("缓存区 {} 添加缓存 {} -> {} ", cacheName, key, value);
		if (key != null) {
			redisTemplate.boundHashOps(cacheName)
					.put(key, value);
		}
		return value;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public V remove(K key) throws CacheException {
		if (key == null) {
			return null;
		}
		BoundHashOperations<Object, Object, Object> hashOperations = redisTemplate.boundHashOps(cacheName);
		V value = (V) hashOperations.get(key);
		hashOperations.delete(key);
		LOGGER.info("从缓存区 {} 移除缓存 {} -> {} ", cacheName, key, value);
		return value;
	}
	
	@Override
	public void clear() throws CacheException {
		LOGGER.info("清空缓存区 {} 缓存 ", cacheName);
		redisTemplate.delete(cacheName);
	}
	
	@Override
	public int size() {
		int size = Objects.requireNonNull(redisTemplate.boundHashOps(cacheName)
						.size())
				.intValue();
		LOGGER.info("缓存区 {} 缓存数量 {} ", cacheName, size);
		return size;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Set<K> keys() {
		Set<K> keys = (Set<K>) redisTemplate.boundHashOps(cacheName)
				.keys();
		LOGGER.info("缓存区 {} 缓存key {} ", cacheName, keys);
		return keys;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Collection<V> values() {
		Collection<V> values = (Collection<V>) redisTemplate.boundHashOps(cacheName)
				.values();
		LOGGER.info("缓存区 {} 缓存values {} ", cacheName, values);
		return values;
	}
}
