package com.glacier.config;

import com.glacier.domain.CowInfo;
import com.glacier.factory.YamlPropertySourceFactory;
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
@PropertySource(value = "classpath:application-cow.yaml", factory = YamlPropertySourceFactory.class )
@Configuration
public class CowConfig {

    @Bean
    @ConfigurationProperties(prefix = "cow", ignoreInvalidFields = true)
    CowInfo cowInfo() {
        return new CowInfo();
    }
}
