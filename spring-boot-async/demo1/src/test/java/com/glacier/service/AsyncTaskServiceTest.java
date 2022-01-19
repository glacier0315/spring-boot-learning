package com.glacier.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2022-01-19 13:58
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class AsyncTaskServiceTest {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AsyncTaskServiceTest.class);
	private static final ThreadLocal<Long> timeHolder = new ThreadLocal<>();
	
	@Autowired
	private AsyncTaskService asyncTaskService;
	
	@BeforeEach
	void setUp() {
		timeHolder.set(System.currentTimeMillis());
		LOGGER.info("{} setUp()", Thread.currentThread().getName());
	}
	
	@AfterEach
	void tearDown() {
		timeHolder.remove();
		LOGGER.info("{} tearDown()", Thread.currentThread().getName());
	}
	
	@Test
	void asyncTask() {
		asyncTaskService.asyncTask();
		LOGGER.info("{} ：void asyncTask()，耗时：{}", Thread.currentThread().getName(), (System.currentTimeMillis() - timeHolder.get()));
	}
	
	@Test
	void testAsyncTask() {
		System.out.println(asyncTaskService.asyncTask("hello"));
		LOGGER.info("{} ：void testAsyncTask()，耗时：{}", Thread.currentThread().getName(), (System.currentTimeMillis() - timeHolder.get()));
	}
}
