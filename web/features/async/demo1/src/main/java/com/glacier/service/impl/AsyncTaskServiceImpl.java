package com.glacier.service.impl;

import com.glacier.service.AsyncTaskService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Service;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;
import java.util.function.Consumer;

/**
 * date 2022-01-19 13:52
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class AsyncTaskServiceImpl implements AsyncTaskService {
    private static final Logger LOGGER = LoggerFactory.getLogger(AsyncTaskServiceImpl.class);

    @Async
    @Override
    public void asyncTask() {
        Consumer<String> consumer = s -> {
            //模拟耗时
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                LOGGER.error("出现错误", e);
            }
        };
        process(consumer, "void asyncTask");
    }

    @Async("taskExecutor")
    @Override
    public Future<String> asyncTask(String name) {
        Consumer<String> consumer = s -> {
            //模拟耗时
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                LOGGER.error("出现错误", e);
            }
        };
        return process(consumer, "Future<String> asyncTask");
    }

    /**
     * 处理
     *
     * @param consumer 处理
     * @param name     字符串
     */
    private Future<String> process(Consumer<String> consumer, String name) {
        long startTime = System.currentTimeMillis();
        if (consumer != null) {
            consumer.accept(name);
        }
        long endTime = System.currentTimeMillis();
        LOGGER.info("{} ： {}，耗时：{}", Thread.currentThread().getName(), name, (endTime - startTime));
        return CompletableFuture.completedFuture(name);
    }
}
