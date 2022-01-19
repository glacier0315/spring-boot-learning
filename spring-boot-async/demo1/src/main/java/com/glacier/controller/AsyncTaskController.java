package com.glacier.controller;

import com.glacier.service.AsyncTaskService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/**
 * date 2022-01-19 14:08
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping("async")
public class AsyncTaskController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AsyncTaskController.class);
	private final AsyncTaskService asyncTaskService;
	
	@Autowired
	public AsyncTaskController(AsyncTaskService asyncTaskService) {
		this.asyncTaskService = asyncTaskService;
	}
	
	@GetMapping("task1")
	public String task1(Model model) {
		LOGGER.info("{} task1", Thread.currentThread().getName());
		asyncTaskService.asyncTask();
		return "task1";
	}
	
	@GetMapping("task2")
	public String task2(Model model) {
		LOGGER.info("{} task2", Thread.currentThread().getName());
		Future<String> future = asyncTaskService.asyncTask("hello");
		while (!future.isDone()) {
			LOGGER.info("task2 Calculating...");
			try {
				Thread.sleep(300);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		try {
			LOGGER.info(future.get());
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}
		return "task2";
	}
}
