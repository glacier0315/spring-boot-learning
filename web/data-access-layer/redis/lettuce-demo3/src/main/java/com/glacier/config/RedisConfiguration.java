package com.glacier.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.cache.enhance.EnhancedCacheManager;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.CacheManager;
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
@Slf4j
@Configuration
@EnableCaching
public class RedisConfiguration {
    @Resource
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
        RedisSerializer<String> ksySerializer = keySerializer();
        redisTemplate.setKeySerializer(ksySerializer);
        // hash的key也采用String的序列化方式
        redisTemplate.setHashKeySerializer(ksySerializer);
        // value序列化方式采用jackson
        RedisSerializer<Object> valueSerializer = valueSerializer();
        redisTemplate.setValueSerializer(valueSerializer);
        // hash的value序列化方式采用jackson
        redisTemplate.setHashValueSerializer(valueSerializer);
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
    public CacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
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
        RedisCacheManager cacheManager = RedisCacheManager.builder(redisConnectionFactory)
                .cacheDefaults(config)
                .withCacheConfiguration("user", config1)
                .transactionAware()
                .build();
        return new EnhancedCacheManager(cacheManager);
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
        return new Jackson2JsonRedisSerializer<>(objectMapper, Object.class);
    }
}
