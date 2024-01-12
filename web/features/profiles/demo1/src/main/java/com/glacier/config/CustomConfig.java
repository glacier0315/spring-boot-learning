package com.glacier.config;

import com.glacier.property.CustomProp;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2024-01-12 22:13
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class CustomConfig {

    @Bean
    @ConfigurationProperties(prefix = "custom.a")
    CustomProp customPropA(){
        return new CustomProp();
    }

    @Bean
    @ConfigurationProperties(prefix = "custom.b")
    CustomProp customPropB(){
        return new CustomProp();
    }
}
