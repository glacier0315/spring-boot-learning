package com.glacier.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.enums.CacheConfigEnums;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.cache.RedisCacheManagerBuilderCustomizer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.RedisSerializer;

import java.time.Duration;
import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

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
        RedisSerializer<String> keySerializer = RedisSerializer.string();
        redisTemplate.setKeySerializer(keySerializer);
        redisTemplate.setHashKeySerializer(keySerializer);
        // value序列化方式采用jackson
        RedisSerializer<Object> valueSerializer = new GenericJackson2JsonRedisSerializer(objectMapper);
        redisTemplate.setValueSerializer(valueSerializer);
        redisTemplate.setHashValueSerializer(valueSerializer);

        redisTemplate.afterPropertiesSet();
        return redisTemplate;
    }

    /**
     * 配置缓存管理器
     * @return
     */
    @Bean
    RedisCacheManagerBuilderCustomizer redisCacheManagerBuilderCustomizer() {
        return builder -> {
            RedisSerializer<String> keySerializer = RedisSerializer.string();
            RedisSerializer<Object> valueSerializer = new GenericJackson2JsonRedisSerializer(objectMapper);

            //配置 key value 序列化器，过期时间
            RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig()
                    .entryTtl(Duration.ofSeconds(30))
                    .prefixCacheNameWith(CacheConfigEnums.COMMON_CACHE_KEY)
                    .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer))
                    .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer))
                    .disableCachingNullValues();

            Map<String, RedisCacheConfiguration> configMap = Arrays.stream(CacheConfigEnums.values())
                    .collect(Collectors.toMap(CacheConfigEnums::getCacheName,
                            t -> RedisCacheConfiguration.defaultCacheConfig()
                                    .entryTtl(t.getTtl())
                                    .prefixCacheNameWith(CacheConfigEnums.COMMON_CACHE_KEY)
                                    .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySerializer))
                                    .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer))));
            builder.cacheDefaults(config)
                    .withInitialCacheConfigurations(configMap)
                    .transactionAware();
        };
    }
}
