package com.glacier.quartz.jobs;

import org.quartz.*;
import org.springframework.scheduling.quartz.QuartzJobBean;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * date 2021-04-21 09:57
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class PrintJob extends QuartzJobBean {

    @Override
    protected void executeInternal(JobExecutionContext jobExecutionContext)
            throws JobExecutionException {
        Trigger trigger = jobExecutionContext.getTrigger();
        JobDetail jobDetail = jobExecutionContext.getJobDetail();
        JobDataMap jobDataMap = jobDetail.getJobDataMap();
        System.out.println("jobExecutionContext:\t" + jobExecutionContext);
        System.out.println("trigger:\t" + trigger);
        System.out.println("jobDetail:\t" + jobExecutionContext);
        System.out.println("jobDataMap:\t" + jobDataMap);

        // 编写任务的逻辑
        System.out.println("执行定时任务业务逻辑，当前时间是：\t" + LocalDateTime.now());
    }
}