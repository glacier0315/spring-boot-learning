package com.glacier.config;

import com.glacier.cache.aspect.CacheEvictAspect;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.CacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

/**
 * date 2024-01-09 16:35
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class EnhancedCacheAutoConfiguration {

    @Bean
    CacheEvictAspect cacheEvictAspect(
            @Qualifier("taskExecutor") ThreadPoolTaskExecutor taskExecutor,
            @Qualifier("cacheManager") CacheManager cacheManager) {
        return new CacheEvictAspect(taskExecutor, cacheManager);
    }
}
