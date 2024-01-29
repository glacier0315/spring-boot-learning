package com.glacier.config;

import com.glacier.domain.AppInfo;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2024-01-29 12:43
 *
 * @author glacier
 * @version 1.0
 */
@EnableConfigurationProperties
@Configuration
public class AppConfig {

    @Bean
    @ConfigurationProperties(prefix = "app.info", ignoreInvalidFields = true)
    AppInfo appInfo() {
        return new AppInfo();
    }
}
