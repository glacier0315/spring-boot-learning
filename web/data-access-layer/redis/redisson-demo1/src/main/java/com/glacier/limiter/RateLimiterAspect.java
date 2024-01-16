package com.glacier.limiter;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.redisson.api.RRateLimiter;
import org.redisson.api.RedissonClient;
import org.springframework.util.DigestUtils;

import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-16 22:44
 * aop限流
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Aspect
public class RateLimiterAspect {

    private final RedissonClient redissonClient;

    public RateLimiterAspect(RedissonClient redissonClient) {
        this.redissonClient = redissonClient;
    }

    @Around(value = "@annotation(RateLimiter)")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) point.getSignature();
        // 方法对象
        Method targetMethod = methodSignature.getMethod();
        // 反射得到自定义注解的方法对象
        RateLimiter rateLimiter = targetMethod.getAnnotation(RateLimiter.class);
        isAllow(point, rateLimiter);
        return point.proceed();
    }

    @Around(value = " @annotation(RateLimiters)")
    public Object arounds(ProceedingJoinPoint point) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) point.getSignature();
        // 方法对象
        Method targetMethod = methodSignature.getMethod();
        // 反射得到自定义注解的方法对象
        RateLimiters rateLimiters = targetMethod.getAnnotation(RateLimiters.class);
        RateLimiter[] limiters = rateLimiters.value();
        for (RateLimiter rateLimiter : limiters) {
            isAllow(point, rateLimiter);
        }
        return point.proceed();
    }

    private void isAllow(ProceedingJoinPoint point, RateLimiter rateLimiter) {
        // 获取key
        String key = String.join(".", rateLimiter.keys());
        // 此处是为了日志输出
        boolean flag = isNotBlank(key);
        // 类路径+方法，然后计算md5
        String uniqueKey = getUniqueKey((MethodSignature) point.getSignature());
        // key名称
        String finalKey = isNotBlank(key) ? uniqueKey + "." + key : uniqueKey;
        // 获取RRateLimiter实例
        RRateLimiter limiter = redissonClient.getRateLimiter(finalKey);
        // 创建令牌桶数据模型，单位时间内产生多少令牌
        limiter.trySetRate(rateLimiter.mode(), rateLimiter.rate(), rateLimiter.rateInterval(), rateLimiter.rateIntervalUnit());
        // 尝试访问数据，timeout 时间内，允许获得的数量permits(如果获取失败，返回false)
        // 单位时间内不能获取到1个令牌，则返回，不阻塞
        boolean tryAcquire = limiter.tryAcquire(1, rateLimiter.rateInterval(), TimeUnit.SECONDS);
        log.info("【{}】请求，线程：【{}】，获取令牌的结果：{}", flag ? "单用户" : "多用户", Thread.currentThread().getName(), tryAcquire);
        if (!tryAcquire) {
            log.error("限流模式：{}; 限流数量：{}; 限流时间间隔：{}",
                    rateLimiter.mode().toString(), rateLimiter.rate(), rateLimiter.rateInterval());
            throw new RuntimeException(rateLimiter.showPromptMsg());
        }
    }

    private boolean isNotBlank(String key) {
        return key != null && !key.isBlank();
    }

    private String getUniqueKey(MethodSignature signature) {
        String format = String.format("%s.%s", signature.getDeclaringTypeName(), signature.getMethod().getName());
        return DigestUtils.md5DigestAsHex(format.getBytes(StandardCharsets.UTF_8));
    }
}
