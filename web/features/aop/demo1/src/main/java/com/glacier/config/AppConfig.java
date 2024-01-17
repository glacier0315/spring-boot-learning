package com.glacier.config;

import com.glacier.aop.LogAspect;
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
     * aop 日志切面
     *
     * @return
     */
    @Bean
    LogAspect logAspect() {
        return new LogAspect();
    }
}
