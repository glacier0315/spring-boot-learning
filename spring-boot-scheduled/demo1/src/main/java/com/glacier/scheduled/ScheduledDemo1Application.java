package com.glacier.scheduled;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 17:30
 */
@SpringBootApplication
@EnableScheduling
public class ScheduledDemo1Application {

    public static void main(String[] args) {
        SpringApplication.run(ScheduledDemo1Application.class, args);
    }
}
