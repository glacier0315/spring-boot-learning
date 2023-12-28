package com.galcier;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * date 2023-12-16 10:43
 *
 * @author glacier
 * @version 1.0
 */
@EnableAsync
@SpringBootApplication
public class EventDemo1Application {

    public static void main(String[] args) {
        SpringApplication.run(EventDemo1Application.class, args);
    }

    @Bean
    public ApplicationRunner applicationRunner() {
        return (args) -> {
            System.out.println("我启动了！" + args);
        };
    }
}
