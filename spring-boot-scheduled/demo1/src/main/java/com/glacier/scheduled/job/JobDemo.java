package com.glacier.scheduled.job;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 17:32
 */
@Component
public class JobDemo {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(JobDemo.class);
	
	@Scheduled(cron = "0/10 * * * * ?")
	public void print() {
		LOGGER.info("print 定时任务启动， 当前时间是：\t" + LocalDateTime.now());
	}
	
	
	@Scheduled(cron = "0/10 * * * * ?")
	public void print2() {
		LOGGER.info("print2 定时任务启动， 当前时间是：\t" + LocalDateTime.now());
		try {
			Thread.sleep(15 * 1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		LOGGER.info("print2 定时任务结束， 当前时间是：\t" + LocalDateTime.now());
	}
}
