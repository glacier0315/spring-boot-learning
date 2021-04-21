package com.glacier.quartz.config;

import com.glacier.quartz.jobs.PrintJob;
import org.quartz.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.JobDetailFactoryBean;

/**
 * date 2021-04-21 09:57
 * Quartz的相关配置，注册JobDetail和Trigger
 * 注意JobDetail和Trigger是org.quartz包下的，不是spring包下的，不要导入错误
 * @author glacier
 * @version 1.0
 *
 */
@Configuration
public class QuartzConfig {

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