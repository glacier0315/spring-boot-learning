package com.glacier.limiter;

import org.redisson.api.RateIntervalUnit;
import org.redisson.api.RateType;

import java.lang.annotation.*;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-16 22:42
 *
 * @author glacier
 * @version 1.0
 */
@Documented
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface RateLimiter {
    /**
     * RRateLimiter 限流模式
     * OVERALL     所有客户端加总限流
     * PER_CLIENT  每个客户端单独计算流量
     */
    RateType mode() default RateType.PER_CLIENT;

    /**
     * Spel表达式
     * key的名称 keys ，用于Redis锁的键
     */
    String[] keys() default {};

    /**
     * 单位时间产生的令牌数，默认100
     */
    long rate() default 100;

    /**
     * 时间间隔，默认1秒
     */
    long rateInterval() default 1;

    /**
     * 时间单位
     */
    RateIntervalUnit rateIntervalUnit() default RateIntervalUnit.SECONDS;

    /**
     * 拒绝请求时的提示信息
     */
    String showPromptMsg() default "服务器繁忙，请稍候再试";
}
