package com.glacier.quartz.config;

import com.glacier.quartz.jobs.PrintJob;
import org.quartz.*;
import org.quartz.impl.matchers.EverythingMatcher;
import org.quartz.impl.matchers.KeyMatcher;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;

/**
 * date 2021-04-21 09:57
 * Quartz的相关配置，注册JobDetail和Trigger
 * 注意JobDetail和Trigger是org.quartz包下的，不是spring包下的，不要导入错误
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class QuartzConfig {

    /**
     * 配置scheduler
     * @param schedulerFactoryBean
     * @param schedulerListener
     * @param jobListener
     * @param triggerListener
     * @return
     * @throws SchedulerException
     */
    @Bean(name = "scheduler")
    public Scheduler scheduler(
            SchedulerFactoryBean schedulerFactoryBean,
            SchedulerListener schedulerListener,
            JobListener jobListener,
            TriggerListener triggerListener) throws SchedulerException {
        Scheduler scheduler = schedulerFactoryBean.getScheduler();
        //全局添加监听器
        //添加SchedulerListener监听器
        ListenerManager listenerManager = scheduler.getListenerManager();
        listenerManager.addSchedulerListener(schedulerListener);

        // 添加JobListener, 支持带条件匹配监听器
        listenerManager.addJobListener(jobListener,
                KeyMatcher.keyEquals(JobKey.jobKey("print_job")));

        // 添加triggerListener，设置全局监听
        listenerManager.addTriggerListener(triggerListener, EverythingMatcher.allTriggers());
        return scheduler;
    }

//    @Bean
    public JobDetail jobDetail() {
        return JobBuilder.newJob(PrintJob.class)
                .withIdentity("print_job")
                .storeDurably()
                .build();
    }

//    @Bean
    public Trigger trigger(JobDetail job) {
        return TriggerBuilder.newTrigger()
                .forJob(job)
                .withIdentity("print_job")
                .startNow()
                .withSchedule(CronScheduleBuilder.cronSchedule("0/3 * * * * ?"))
                .build();
    }
}