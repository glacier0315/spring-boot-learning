package com.glacier.quartz.jobs;

import org.quartz.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.QuartzJobBean;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDateTime;

/**
 * date 2021-04-21 09:57
 *
 * @author glacier
 * @version 1.0
 */
@PersistJobDataAfterExecution  //持久化
@DisallowConcurrentExecution  // 禁止并发执行
@Component
public class PrintJob extends QuartzJobBean {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(PrintJob.class);
	
	private final Scheduler scheduler;
	private final DataSource dataSource;
	
	@Autowired
	public PrintJob(Scheduler scheduler, DataSource dataSource) {
		this.scheduler = scheduler;
		this.dataSource = dataSource;
	}
	
	@Override
	protected void executeInternal(JobExecutionContext jobExecutionContext)
			throws JobExecutionException {
		Trigger trigger = jobExecutionContext.getTrigger();
		JobDetail jobDetail = jobExecutionContext.getJobDetail();
		JobDataMap jobDataMap = jobDetail.getJobDataMap();
		LOGGER.info("jobExecutionContext:\t{}", jobExecutionContext);
		LOGGER.info("trigger:\t{}", trigger);
		LOGGER.info("jobDetail:\t{}", jobExecutionContext);
		LOGGER.info("jobDataMap:\t{}", jobDataMap);
		LOGGER.info("dataSource:\t{}", dataSource);
		LOGGER.info("scheduler:\t{}", scheduler);
		
		// 编写任务的逻辑
		LOGGER.info("PrintJob 开始::: {}\t:::{}",
				Thread.currentThread().getName(),
				LocalDateTime.now());
		
		try {
			Thread.sleep(6000);
		} catch (InterruptedException e) {
			LOGGER.info("PrintJob 出现异常::: {}\t:::{}",
					Thread.currentThread().getName(),
					LocalDateTime.now(),
					e);
		}
		LOGGER.info("PrintJob 结束::: {}\t:::{}",
				Thread.currentThread().getName(),
				LocalDateTime.now());
	}
}
