package com.glacier.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.task.TaskExecutor;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.ThreadPoolExecutor;

/**
 * date 2022-01-19 11:21
 * 线程池的配置
 *
 * @author glacier
 * @version 1.0
 */
@EnableAsync
@Configuration
public class AsyncConfig {

    /**
     * 线程池任务执行器
     *
     * @return
     */
    @Bean("taskExecutor")
    public TaskExecutor taskExecutor() {
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        // 核心线程数
        taskExecutor.setCorePoolSize(5);
        // 最大线程数
        taskExecutor.setMaxPoolSize(50);
        // 缓冲队列数
        taskExecutor.setQueueCapacity(100);
        // 允许线程空闲时间
        taskExecutor.setKeepAliveSeconds(30);
        // 线程池前缀名
        taskExecutor.setThreadNamePrefix("Task_Service_Async_");
        /*
         * allowCoreThreadTimeOut为true则线程池数量最后销毁到0个
         * allowCoreThreadTimeOut为false
         * 销毁机制：超过核心线程数时，而且（超过最大值或者timeout过），就会销毁。
         * 默认是false
         */
        taskExecutor.setAllowCoreThreadTimeOut(false);
        taskExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
        //线程池初始化
        taskExecutor.initialize();
        return taskExecutor;
    }
}
