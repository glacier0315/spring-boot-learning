package com.glacier.config;

import com.glacier.cache.processor.EnhancedBeanPostProcessor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2024-01-09 16:35
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class EnhancedCacheAutoConfiguration {

    /**
     * 增强 bean post processor
     *
     * @return EnhancedBeanPostProcessor
     */
//    @Bean
    EnhancedBeanPostProcessor enhancedBeanPostProcessor() {
        return new EnhancedBeanPostProcessor();
    }
}
