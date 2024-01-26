package com.glacier.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.cache.CacheDelayRemoveRunner;
import com.glacier.cache.EnhancedCacheManager;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RedissonClient;
import org.redisson.codec.JsonJacksonCodec;
import org.redisson.spring.cache.CacheConfig;
import org.redisson.spring.cache.RedissonSpringCacheManager;
import org.redisson.spring.starter.RedissonAutoConfigurationCustomizer;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

import java.util.HashMap;
import java.util.Map;

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

//    /**
//     * 配置缓存管理器
//     *
//     * @param redisConnectionFactory Redis 线程安全连接工厂
//     * @return 缓存管理器
//     */
//    @Bean
//    public CacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
//        RedisSerializer<String> keySerializer = RedisSerializer.string();
//        RedisSerializer<Object> valueSerializer = new GenericJackson2JsonRedisSerializer(objectMapper);
//
//        //配置 key value 序列化器，过期时间
//        RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig()
//                .entryTtl(Duration.ofSeconds(30))
//                .prefixCacheNameWith(CacheConfigEnums.COMMON_CACHE_KEY)
//                .serializeKeysWith((RedisSerializationContext.SerializationPair.fromSerializer(keySerializer)))
//                .serializeValuesWith((RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer)))
//                .disableCachingNullValues();
//
//        Map<String, RedisCacheConfiguration> cacheMap = Arrays.stream(CacheConfigEnums.values())
//                .collect(Collectors.toMap(CacheConfigEnums::getCacheName,
//                        t -> RedisCacheConfiguration.defaultCacheConfig()
//                                .entryTtl(t.getTtl())
//                                .prefixCacheNameWith(CacheConfigEnums.COMMON_CACHE_KEY)
//                                .serializeKeysWith((RedisSerializationContext.SerializationPair.fromSerializer(keySerializer)))
//                                .serializeValuesWith((RedisSerializationContext.SerializationPair.fromSerializer(valueSerializer)))));
//
//        RedisCacheManager cacheManager = RedisCacheManager.builder(redisConnectionFactory)
//                .cacheDefaults(config)
//                .withInitialCacheConfigurations(cacheMap)
//                .transactionAware()
//                .build();
//        return new EnhancedCacheManager(cacheManager);
//    }

    @Bean
    CacheDelayRemoveRunner cacheDelayRemoveRunner(){
        return new CacheDelayRemoveRunner();
    }


    /**
     * 自定义redisson配置
     *
     * @return
     */
    @Bean
    RedissonAutoConfigurationCustomizer redissonAutoConfigurationCustomizer() {
        return (config) -> {
            // 修改编码器
            config.setCodec(new JsonJacksonCodec(objectMapper));
        };
    }

    /**
     * 整合spring-cache
     *
     * @param redissonClient
     * @return
     */
    @Bean
    @Primary
    CacheManager cacheManager(RedissonClient redissonClient) {
        Map<String, CacheConfig> config = new HashMap<>();
        // 创建一个名称为"product"的缓存，过期时间ttl为24分钟，同时最长空闲时maxIdleTime为12分钟。
        config.put("product", new CacheConfig(24 * 60 * 1000, 12 * 60 * 1000));
        RedissonSpringCacheManager cacheManager = new RedissonSpringCacheManager(redissonClient, config);
        return new EnhancedCacheManager(cacheManager);
    }

}
