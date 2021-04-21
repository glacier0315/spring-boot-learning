package com.glacier.quartz.jobs;

import org.quartz.*;
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
//@DisallowConcurrentExecution // 禁止并发执行
@Component
public class PrintJob extends QuartzJobBean {

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
        System.out.println("jobExecutionContext:\t" + jobExecutionContext);
        System.out.println("trigger:\t" + trigger);
        System.out.println("jobDetail:\t" + jobExecutionContext);
        System.out.println("jobDataMap:\t" + jobDataMap);
        System.out.println("dataSource:\t" + dataSource);
        System.out.println("scheduler:\t" + scheduler);

        // 编写任务的逻辑
        System.out.println("PrintJob 开始:::" + Thread.currentThread().getName() + ":::" + LocalDateTime.now());
        try {
            Thread.sleep(6000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("PrintJob 结束:::" + Thread.currentThread().getName() + ":::" + LocalDateTime.now());
    }
}