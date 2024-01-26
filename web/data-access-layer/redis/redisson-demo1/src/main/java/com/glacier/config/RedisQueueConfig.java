package com.glacier.config;

import com.glacier.entity.CacheRemoveEvent;
import org.redisson.api.RBlockingQueue;
import org.redisson.api.RDelayedQueue;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2024-01-26 11:16
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class RedisQueueConfig {

    @Bean("rBlockingQueue")
    public RBlockingQueue<CacheRemoveEvent> rBlockingQueue(RedissonClient redissonClient) {
        return redissonClient.getBlockingQueue("rBlockingQueue");
    }

    @Bean("rDelayedQueue")
    public RDelayedQueue<CacheRemoveEvent> rDelayedQueue(
            RedissonClient redissonClient,
            @Qualifier("rBlockingQueue") RBlockingQueue<CacheRemoveEvent> blockQueue) {
        return redissonClient.getDelayedQueue(blockQueue);
    }
}
