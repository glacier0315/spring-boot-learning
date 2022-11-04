package com.glacier.service;

import java.util.concurrent.Future;

/**
 * date 2022-01-19 11:21
 *
 * @author glacier
 * @version 1.0
 */
public interface AsyncTaskService {
	
	/**
	 * 异步调用，无返回值
	 */
	void asyncTask();
	
	/**
	 * 异步调用，有返回值
	 *
	 * @param s
	 * @return
	 */
	Future<String> asyncTask(String s);
	
}
