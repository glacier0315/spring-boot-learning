package com.glacier.quartz.listener;

import org.quartz.*;
import org.quartz.listeners.SchedulerListenerSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * date 2021-04-21 21:45
 * 任务调度监听器
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class SimpleSchedulerListener extends SchedulerListenerSupport {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SimpleSchedulerListener.class);
	
	@Override
	public void jobScheduled(Trigger trigger) {
		LOGGER.info("任务被部署时被执行");
	}
	
	@Override
	public void jobUnscheduled(TriggerKey triggerKey) {
		LOGGER.info("任务被卸载时被执行");
	}
	
	@Override
	public void triggerFinalized(Trigger trigger) {
		LOGGER.info("任务完成了它的使命，光荣退休时被执行");
	}
	
	@Override
	public void triggerPaused(TriggerKey triggerKey) {
		LOGGER.info("{}（一个触发器）被暂停时被执行", triggerKey);
	}
	
	@Override
	public void triggersPaused(String triggerGroup) {
		LOGGER.info("{}所在组的全部触发器被停止时被执行", triggerGroup);
	}
	
	@Override
	public void triggerResumed(TriggerKey triggerKey) {
		LOGGER.info("{}（一个触发器）被恢复时被执行", triggerKey);
	}
	
	@Override
	public void triggersResumed(String triggerGroup) {
		LOGGER.info("{}所在组的全部触发器被回复时被执行", triggerGroup);
	}
	
	@Override
	public void jobAdded(JobDetail jobDetail) {
		LOGGER.info("一个JobDetail被动态添加进来");
	}
	
	@Override
	public void jobDeleted(JobKey jobKey) {
		LOGGER.info("{}被删除时被执行", jobKey);
	}
	
	@Override
	public void jobPaused(JobKey jobKey) {
		LOGGER.info("{}被暂停时被执行", jobKey);
	}
	
	@Override
	public void jobsPaused(String jobGroup) {
		LOGGER.info("{}(一组任务）被暂停时被执行", jobGroup);
	}
	
	@Override
	public void jobResumed(JobKey jobKey) {
		LOGGER.info("{}被恢复时被执行", jobKey);
	}
	
	@Override
	public void jobsResumed(String jobGroup) {
		LOGGER.info("{}(一组任务）被恢复时被执行", jobGroup);
	}
	
	@Override
	public void schedulerError(String msg, SchedulerException cause) {
		LOGGER.error("出现异常 {}", msg, cause);
	}
	
	@Override
	public void schedulerInStandbyMode() {
		LOGGER.info("scheduler被设为standBy等候模式时被执行");
	}
	
	@Override
	public void schedulerStarted() {
		LOGGER.info("scheduler启动时被执行");
	}
	
	@Override
	public void schedulerStarting() {
		LOGGER.info("scheduler正在启动时被执行");
	}
	
	@Override
	public void schedulerShutdown() {
		LOGGER.info("scheduler关闭时被执行");
	}
	
	@Override
	public void schedulerShuttingdown() {
		LOGGER.info("scheduler正在关闭时被执行");
	}
	
	@Override
	public void schedulingDataCleared() {
		LOGGER.info("scheduler中所有数据包括jobs, triggers和calendars都被清空时被执行");
	}
}
