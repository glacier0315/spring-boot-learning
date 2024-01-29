package com.glacier.config;

import com.glacier.domain.CatInfo;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

/**
 * date 2024-01-29 12:53
 *
 * @author glacier
 * @version 1.0
 */
@PropertySource(value = "classpath:application-cat.properties")
@Configuration
public class CatConfig {

    @Bean
    @ConfigurationProperties(prefix = "cat", ignoreInvalidFields = true)
    CatInfo catInfo() {
        return new CatInfo();
    }
}
