package com.glacier.quartz.service.impl;

import com.glacier.quartz.service.QuartzService;
import org.quartz.*;
import org.quartz.impl.matchers.GroupMatcher;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.QuartzJobBean;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.util.*;

/**
 * date 2021-04-21 09:57
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class QuartzServiceImpl implements QuartzService {
	private static final Logger LOGGER = LoggerFactory.getLogger(QuartzServiceImpl.class);
	private final Scheduler scheduler;
	
	@Autowired
	public QuartzServiceImpl(Scheduler scheduler) {
		this.scheduler = scheduler;
	}
	
	@PostConstruct
	public void startScheduler() throws SchedulerException {
		if (!scheduler.isStarted()) {
			scheduler.start();
		}
	}
	
	/**
	 * 增加一个job
	 *
	 * @param jobClass     任务实现类
	 * @param jobName      任务名称
	 * @param jobGroupName 任务组名
	 * @param jobTime      时间表达式 (这是每隔多少秒为一次任务)
	 * @param jobTimes     运行的次数 （<0:表示不限次数）
	 * @param jobData      参数
	 */
	@Override
	public void addJob(Class<? extends QuartzJobBean> jobClass,
					   String jobName, String jobGroupName, int jobTime, int jobTimes, Map<String, Object> jobData) {
		try {
			// 任务名称和组构成任务key
			JobDetail jobDetail = JobBuilder.newJob(jobClass)
					.withIdentity(jobName, jobGroupName)
					.build();
			// 设置job参数
			if (jobData != null && !jobData.isEmpty()) {
				jobDetail.getJobDataMap()
						.putAll(jobData);
			}
			// 使用simpleTrigger规则
			Trigger trigger = null;
			if (jobTimes < 0) {
				trigger = TriggerBuilder.newTrigger()
						.withIdentity(jobName, jobGroupName)
						.withSchedule(SimpleScheduleBuilder.repeatSecondlyForever(1)
								.withIntervalInSeconds(jobTime))
						.startNow()
						.build();
			} else {
				trigger = TriggerBuilder
						.newTrigger()
						.withIdentity(jobName, jobGroupName)
						.withSchedule(SimpleScheduleBuilder
								.repeatSecondlyForever(1)
								.withIntervalInSeconds(jobTime)
								.withRepeatCount(jobTimes))
						.startNow()
						.build();
			}
			scheduler.scheduleJob(jobDetail, trigger);
		} catch (SchedulerException e) {
			LOGGER.error("添加任务失败！{} {} {} {} {}", jobClass, jobName, jobGroupName, jobTime, jobData, e);
		}
	}
	
	/**
	 * 增加一个job
	 *
	 * @param jobClass     任务实现类
	 * @param jobName      任务名称(建议唯一)
	 * @param jobGroupName 任务组名
	 * @param jobTime      时间表达式 （如：0/5 * * * * ? ）
	 * @param jobData      参数
	 */
	@Override
	public void addJob(Class<? extends QuartzJobBean> jobClass,
					   String jobName, String jobGroupName, String jobTime, Map<String, Object> jobData) {
		try {
			// 创建jobDetail实例，绑定Job实现类
			// 指明job的名称，所在组的名称，以及绑定job类
			// 任务名称和组构成任务key
			JobDetail jobDetail = JobBuilder.newJob(jobClass)
					.withIdentity(jobName, jobGroupName)
					.build();
			// 设置job参数
			if (jobData != null && !jobData.isEmpty()) {
				jobDetail.getJobDataMap()
						.putAll(jobData);
			}
			// 定义调度触发规则
			// 使用cornTrigger规则
			// 触发器key
			Trigger trigger = TriggerBuilder.newTrigger()
					.withIdentity(jobName, jobGroupName)
					.startAt(DateBuilder.futureDate(1, DateBuilder.IntervalUnit.SECOND))
					.withSchedule(CronScheduleBuilder.cronSchedule(jobTime))
					.startNow()
					.build();
			// 把作业和触发器注册到任务调度中
			scheduler.scheduleJob(jobDetail, trigger);
		} catch (Exception e) {
			LOGGER.error("添加任务失败！{} {} {} {} {}", jobClass, jobName, jobGroupName, jobTime, jobData, e);
		}
	}
	
	/**
	 * 修改 一个job的 时间表达式
	 *
	 * @param jobName
	 * @param jobGroupName
	 * @param jobTime
	 */
	@Override
	public void updateJob(String jobName, String jobGroupName, String jobTime) {
		try {
			TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroupName);
			CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
			trigger = trigger.getTriggerBuilder()
					.withIdentity(triggerKey)
					.withSchedule(CronScheduleBuilder.cronSchedule(jobTime))
					.build();
			// 重启触发器
			scheduler.rescheduleJob(triggerKey, trigger);
		} catch (SchedulerException e) {
			LOGGER.error("修改任务失败! {} {} {} ！", jobName, jobGroupName, jobTime, e);
		}
	}
	
	/**
	 * 删除任务一个job
	 *
	 * @param jobName      任务名称
	 * @param jobGroupName 任务组名
	 */
	@Override
	public void deleteJob(String jobName, String jobGroupName) {
		try {
			scheduler.deleteJob(new JobKey(jobName, jobGroupName));
		} catch (Exception e) {
			LOGGER.error("删除任务失败！ {} {} ", jobName, jobGroupName, e);
		}
	}
	
	/**
	 * 暂停一个job
	 *
	 * @param jobName
	 * @param jobGroupName
	 */
	@Override
	public void pauseJob(String jobName, String jobGroupName) {
		try {
			JobKey jobKey = JobKey.jobKey(jobName, jobGroupName);
			scheduler.pauseJob(jobKey);
		} catch (SchedulerException e) {
			LOGGER.error("暂停任务失败！ {} {} ", jobName, jobGroupName, e);
		}
	}
	
	/**
	 * 恢复一个job
	 *
	 * @param jobName
	 * @param jobGroupName
	 */
	@Override
	public void resumeJob(String jobName, String jobGroupName) {
		try {
			JobKey jobKey = JobKey.jobKey(jobName, jobGroupName);
			scheduler.resumeJob(jobKey);
		} catch (SchedulerException e) {
			LOGGER.error("恢复任务失败！ {} {} ", jobName, jobGroupName, e);
		}
	}
	
	/**
	 * 立即执行一个job
	 *
	 * @param jobName
	 * @param jobGroupName
	 */
	@Override
	public void runAJobNow(String jobName, String jobGroupName) {
		try {
			JobKey jobKey = JobKey.jobKey(jobName, jobGroupName);
			scheduler.triggerJob(jobKey);
		} catch (SchedulerException e) {
			LOGGER.error("立即执行任务失败！ {} {} ", jobName, jobGroupName, e);
		}
	}
	
	/**
	 * 获取所有计划中的任务列表
	 *
	 * @return
	 */
	@Override
	public List<Map<String, Object>> queryAllJob() {
		List<Map<String, Object>> jobList = new ArrayList<>(20);
		try {
			GroupMatcher<JobKey> matcher = GroupMatcher.anyJobGroup();
			Set<JobKey> jobKeys = scheduler.getJobKeys(matcher);
			for (JobKey jobKey : jobKeys) {
				List<? extends Trigger> triggers = scheduler.getTriggersOfJob(jobKey);
				for (Trigger trigger : triggers) {
					Map<String, Object> map = new HashMap<>(8);
					map.put("jobName", jobKey.getName());
					map.put("jobGroupName", jobKey.getGroup());
					map.put("description", "触发器:" + trigger.getKey());
					map.put("jobStatus",
							scheduler.getTriggerState(trigger.getKey())
									.name());
					if (trigger instanceof CronTrigger) {
						map.put("jobTime", ((CronTrigger) trigger).getCronExpression());
					}
					jobList.add(map);
				}
			}
		} catch (SchedulerException e) {
			LOGGER.error("获取所有计划中的任务列表失败！", e);
		}
		return jobList;
	}
	
	/**
	 * 获取所有正在运行的job
	 *
	 * @return
	 */
	@Override
	public List<Map<String, Object>> queryRunJob() {
		List<Map<String, Object>> jobList = new ArrayList<>(20);
		try {
			List<JobExecutionContext> executingJobs = scheduler.getCurrentlyExecutingJobs();
			for (JobExecutionContext executingJob : executingJobs) {
				Map<String, Object> map = new HashMap<>(8);
				JobDetail jobDetail = executingJob.getJobDetail();
				JobKey jobKey = jobDetail.getKey();
				Trigger trigger = executingJob.getTrigger();
				map.put("jobName", jobKey.getName());
				map.put("jobGroupName", jobKey.getGroup());
				map.put("description", "触发器:" + trigger.getKey());
				map.put("jobStatus",
						scheduler.getTriggerState(trigger.getKey())
								.name());
				if (trigger instanceof CronTrigger) {
					map.put("jobTime", ((CronTrigger) trigger).getCronExpression());
				}
				jobList.add(map);
			}
		} catch (SchedulerException e) {
			LOGGER.error("获取所有计划中的任务列表失败！", e);
		}
		return jobList;
	}
}
