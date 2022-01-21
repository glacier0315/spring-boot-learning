package com.glacier.quartz.listener;

import org.quartz.JobExecutionContext;
import org.quartz.Trigger;
import org.quartz.listeners.TriggerListenerSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * date 2021-04-21 21:45
 * 任务触发监听器
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class SimpleTriggerListener extends TriggerListenerSupport {
	private static final Logger LOGGER = LoggerFactory.getLogger(SimpleTriggerListener.class);
	
	/**
	 * Trigger监听器的名称
	 *
	 * @return
	 */
	@Override
	public String getName() {
		return "mySimpleTriggerListener";
	}
	
	/**
	 * Trigger被激发 它关联的job即将被运行
	 *
	 * @param trigger
	 * @param context
	 */
	@Override
	public void triggerFired(Trigger trigger, JobExecutionContext context) {
		LOGGER.info("myTriggerListener.triggerFired() args: {} {}", trigger, context);
	}
	
	/**
	 * Trigger被激发 它关联的job即将被运行, TriggerListener 给了一个选择去否决 Job 的执行,如果返回TRUE 那么任务job会被终止
	 *
	 * @param trigger
	 * @param context
	 * @return
	 */
	@Override
	public boolean vetoJobExecution(Trigger trigger, JobExecutionContext context) {
		LOGGER.info("myTriggerListener.vetoJobExecution() args: {} {}", trigger, context);
		return false;
	}
	
	/**
	 * 当Trigger错过被激发时执行,比如当前时间有很多触发器都需要执行，但是线程池中的有效线程都在工作，
	 * 那么有的触发器就有可能超时，错过这一轮的触发。
	 *
	 * @param trigger
	 */
	@Override
	public void triggerMisfired(Trigger trigger) {
		LOGGER.info("myTriggerListener.triggerMisfired()  args: {}", trigger);
	}
	
	/**
	 * 任务完成时触发
	 *
	 * @param trigger
	 * @param context
	 * @param triggerInstructionCode
	 */
	@Override
	public void triggerComplete(Trigger trigger, JobExecutionContext context, Trigger.CompletedExecutionInstruction triggerInstructionCode) {
		LOGGER.info("myTriggerListener.triggerComplete() args: {} {} {}", trigger, context, triggerInstructionCode);
	}
}
