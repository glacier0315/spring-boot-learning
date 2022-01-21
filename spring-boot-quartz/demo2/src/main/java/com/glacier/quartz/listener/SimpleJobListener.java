package com.glacier.quartz.listener;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.listeners.JobListenerSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


/**
 * date 2021-04-21 21:45
 * 任务执行监听器
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class SimpleJobListener extends JobListenerSupport {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SimpleJobListener.class);
	
	
	/**
	 * job监听器名称
	 *
	 * @return
	 */
	@Override
	public String getName() {
		return "mySimpleJobListener";
	}
	
	/**
	 * 任务被调度前
	 *
	 * @param context
	 */
	@Override
	public void jobToBeExecuted(JobExecutionContext context) {
		LOGGER.info("simpleJobListener监听器，准备执行：{}", context.getJobDetail().getKey());
	}
	
	/**
	 * 任务调度被拒了
	 *
	 * @param context
	 */
	@Override
	public void jobExecutionVetoed(JobExecutionContext context) {
		LOGGER.info("simpleJobListener监听器，取消执行：{}", context.getJobDetail().getKey());
	}
	
	/**
	 * 任务被调度后
	 *
	 * @param context
	 * @param jobException
	 */
	@Override
	public void jobWasExecuted(JobExecutionContext context, JobExecutionException jobException) {
		LOGGER.info("simpleJobListener监听器，执行结束：{}", context.getJobDetail().getKey());
	}
}
