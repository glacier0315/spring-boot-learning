package com.glacier.scheduled.job;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 17:32
 */
@Component
@Async
public class JobDemo {

    @Scheduled(cron = "0/2 * * * * ?")
    public void print() {
        System.out.println("定时任务启动， 当前时间是：\t" + LocalDateTime.now());
    }
}
