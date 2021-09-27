package com.glacier.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.time.Duration;

/**
 * date 2021-09-27 15:30
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
@EnableCaching
public class RedisConfiguration {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RedisConfiguration.class);
	
	@Autowired
	private ObjectMapper objectMapper;
	
	/**
	 * RedisTemplate 相关配置
	 *
	 * @param redisConnectionFactory Redis 线程安全连接工厂
	 * @return
	 */
	@Bean
	public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory redisConnectionFactory) {
		RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
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
				.entryTtl(Duration.ofSeconds(30))
				.prefixCacheNameWith("cache:")
				.serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer()))
				.serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer()))
				.disableCachingNullValues();
		
		// 生成两套默认配置，通过 Config 对象即可对缓存进行自定义配置
		RedisCacheConfiguration config1 = RedisCacheConfiguration.defaultCacheConfig()
				// 设置过期时间 10 分钟
				.entryTtl(Duration.ofMinutes(10))
				.prefixCacheNameWith("cache:")
				.serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer()))
				.serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer()))
				.disableCachingNullValues();
		return RedisCacheManager.builder(redisConnectionFactory)
				.cacheDefaults(config)
				.withCacheConfiguration("userInfo", config1)
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
		Jackson2JsonRedisSerializer<Object> jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer<>(Object.class);
		jackson2JsonRedisSerializer.setObjectMapper(objectMapper);
		return jackson2JsonRedisSerializer;
	}
}
