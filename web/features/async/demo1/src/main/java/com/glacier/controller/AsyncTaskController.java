package com.glacier.controller;

import com.glacier.service.AsyncTaskService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
@Slf4j
@RestController
@RequestMapping("async")
public class AsyncTaskController {
	private final AsyncTaskService asyncTaskService;

	@Autowired
	public AsyncTaskController(AsyncTaskService asyncTaskService) {
		this.asyncTaskService = asyncTaskService;
	}

	@GetMapping("task1")
	public String task1() {
		log.info("{} task1", Thread.currentThread().getName());
		asyncTaskService.asyncTask();
		return "task1";
	}

	@GetMapping("task2")
	public String task2() {
		log.info("{} task2", Thread.currentThread().getName());
		Future<String> future = asyncTaskService.asyncTask("hello");
        try {
            log.info(future.get());
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } catch (ExecutionException e) {
            throw new RuntimeException(e);
        }
		return "task2";
	}
}
