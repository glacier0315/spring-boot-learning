package com.glacier.shiro.config;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.time.Duration;

/**
 * date 2021-08-02 15:31
 *
 * @author glacier
 * @version 1.0
 */
@EnableCaching
@Configuration
public class RedisConfiguration {
	
	/**
	 * RedisTemplate 相关配置
	 *
	 * @param redisConnectionFactory Redis 线程安全连接工厂
	 * @return
	 */
	@Bean(name = "redisTemplate")
	public RedisTemplate<Object, Object> redisTemplate(RedisConnectionFactory redisConnectionFactory) {
		RedisTemplate<Object, Object> redisTemplate = new RedisTemplate<>();
		redisTemplate.setConnectionFactory(redisConnectionFactory);
		// key采用String的序列化方式
		redisTemplate.setKeySerializer(keySerializer());
		// hash的key也采用String的序列化方式
		redisTemplate.setHashKeySerializer(keySerializer());
		// value序列化方式采用jackson
		redisTemplate.setValueSerializer(valueSerializer());
		// hash的value序列化方式采用jackson
		redisTemplate.setHashValueSerializer(valueSerializer());
		redisTemplate.afterPropertiesSet();
		return redisTemplate;
	}
	
	/**
	 * 配置缓存管理器
	 *
	 * @param redisConnectionFactory Redis 线程安全连接工厂
	 * @return 缓存管理器
	 */
	@Bean
	public RedisCacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
		//配置 key value 序列化器，过期时间
		RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig()
				// 设置过期时间 5 分钟
				.entryTtl(Duration.ofMinutes(5))
				.prefixCacheNameWith("cache:")
				.serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer()))
				.serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer()))
				.disableCachingNullValues();
		
		// 生成两套默认配置，通过 Config 对象即可对缓存进行自定义配置
		RedisCacheConfiguration sessionConfig = RedisCacheConfiguration.defaultCacheConfig()
				// 设置过期时间 30 分钟
				.entryTtl(Duration.ofMinutes(30))
				.prefixCacheNameWith("cache:")
				.serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer()))
				.serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer()))
				.disableCachingNullValues();
		return RedisCacheManager.builder(redisConnectionFactory)
				.cacheDefaults(config)
				.withCacheConfiguration("defaultCache", config)
				.withCacheConfiguration("supcanCache", config)
				.withCacheConfiguration("cmsCache", config)
				.withCacheConfiguration("actCache", config)
				.withCacheConfiguration("sysCache", config)
				.withCacheConfiguration("userCache", config)
				.withCacheConfiguration("activeSessionsCache", sessionConfig)
				.transactionAware()
				.build();
	}
	
	/**
	 * key 序列化
	 *
	 * @return
	 */
	private RedisSerializer<String> keySerializer() {
		return new StringRedisSerializer();
	}
	
	/**
	 * 值采用JSON序列化
	 *
	 * @return
	 */
	private RedisSerializer<Object> valueSerializer() {
		return new JdkSerializationRedisSerializer();
	}
}
