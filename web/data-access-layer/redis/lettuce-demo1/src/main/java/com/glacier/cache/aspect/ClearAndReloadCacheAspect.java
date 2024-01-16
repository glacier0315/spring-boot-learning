package com.glacier.cache.aspect;

import com.glacier.cache.annotation.ClearAndReloadCache;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.cache.CacheManager;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.lang.reflect.Method;
import java.util.Objects;

/**
 * date 2024-01-09 16:33
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Aspect
public class ClearAndReloadCacheAspect {

    /**
     * 延迟时间
     */
    public static final int DEFAULT_DELAY = 2000;
    private final ThreadPoolTaskExecutor threadPoolTaskExecutor;

    private CacheManager cacheManager;

    public ClearAndReloadCacheAspect(ThreadPoolTaskExecutor threadPoolTaskExecutor) {
        this.threadPoolTaskExecutor = threadPoolTaskExecutor;
    }

    /**
     * 切入点,基于注解实现的切入点  加上该注解的都是Aop切面的切入点
     */
    @Pointcut("@annotation(com.glacier.cache.annotation.ClearAndReloadCache)")
    public void pointCut() {

    }

    /**
     * 环绕通知非常强大，可以决定目标方法是否执行，什么时候执行，执行时是否需要替换方法参数，执行完毕是否需要替换返回值。
     * 环绕通知第一个参数必须是org.aspectj.lang.ProceedingJoinPoint类型
     *
     * @param proceedingJoinPoint
     * @return
     */
    @Around("pointCut()")
    public Object aroundAdvice(ProceedingJoinPoint proceedingJoinPoint) {
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        // 方法对象
        Method targetMethod = methodSignature.getMethod();
        // 反射得到自定义注解的方法对象
        ClearAndReloadCache annotation = targetMethod.getAnnotation(ClearAndReloadCache.class);
        // 获取自定义注解的方法对象的参数即name
        String name = annotation.name();

        String key = annotation.key();

        // 删除缓存
        if (name != null && !name.isEmpty()) {
            Objects.requireNonNull(cacheManager.getCache(name)).evictIfPresent(key);
        }

        // 执行加入双删注解的改动数据库的业务 即controller中的方法业务
        Object proceed = null;
        try {
            proceed = proceedingJoinPoint.proceed();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
        threadPoolTaskExecutor.execute(() -> {
            // 清理缓存
            try {
                // 先睡眠2秒
                Thread.sleep(DEFAULT_DELAY);
                if (name != null && !name.isEmpty()) {
                    Objects.requireNonNull(cacheManager.getCache(name)).evictIfPresent(key);
                }
                log.info("{} 毫秒后， 清理缓存:{}", DEFAULT_DELAY, name);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }

        });
        // 返回业务代码的值
        return proceed;
    }
}
