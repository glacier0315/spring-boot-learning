package com.galcier.config;

import com.galcier.listener.UserEventListener;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2023-12-16 11:09
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class AppConfig {
    @Bean
    public UserEventListener userRegisterListener() {
        return new UserEventListener();
    }
}
