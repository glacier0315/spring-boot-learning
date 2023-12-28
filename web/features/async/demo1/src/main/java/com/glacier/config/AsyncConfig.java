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
        // 创建线程池
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(5); // 设置核心池大小
        executor.setMaxPoolSize(10); // 设置最大池大小，只有在缓冲队列满了之后才会申请超过核心线程数的线程
        executor.setQueueCapacity(100); // 设置队列容量
        executor.setKeepAliveSeconds(60); // 设置保持活动秒数，当超过了核心线程数之外的线程在空闲时间到达之后会被销毁
        executor.setThreadNamePrefix("custom-Thread-"); // 设置线程名称前缀
        // 设置拒绝的执行处理策略
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
        return executor;
    }
}
