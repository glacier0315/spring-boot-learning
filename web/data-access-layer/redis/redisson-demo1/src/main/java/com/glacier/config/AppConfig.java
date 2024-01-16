package com.glacier.config;

import com.glacier.limiter.RateLimiterAspect;
import org.redisson.api.RedissonClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * date 2024-01-17 10:03
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
@EnableAspectJAutoProxy
public class AppConfig {

    /**
     * aop 限流
     *
     * @param redissonClient
     * @return
     */
    @Bean
    RateLimiterAspect rateLimiterAspect(RedissonClient redissonClient) {
        return new RateLimiterAspect(redissonClient);
    }
}
