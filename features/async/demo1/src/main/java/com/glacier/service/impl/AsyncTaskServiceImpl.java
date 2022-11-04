package com.glacier.service.impl;

import com.glacier.service.AsyncTaskService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Service;

import java.util.concurrent.Future;

/**
 * date 2022-01-19 13:52
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class AsyncTaskServiceImpl implements AsyncTaskService {
	private static final Logger LOGGER = LoggerFactory.getLogger(AsyncTaskServiceImpl.class);
	
	@Async
	@Override
	public void asyncTask() {
		long startTime = System.currentTimeMillis();
		//模拟耗时
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			LOGGER.error("出现错误", e);
		}
		long endTime = System.currentTimeMillis();
		LOGGER.info("{} ：void asyncTask()，耗时：{}", Thread.currentThread().getName(), (endTime - startTime));
	}
	
	@Async("asyncTaskExecutor")
	@Override
	public Future<String> asyncTask(String s) {
		long startTime = System.currentTimeMillis();
		//模拟耗时
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			LOGGER.error("出现错误", e);
		}
		long endTime = System.currentTimeMillis();
		LOGGER.info("{} ：void asyncTask()，耗时：{}", Thread.currentThread().getName(), (endTime - startTime));
		return AsyncResult.forValue(s);
	}
}
