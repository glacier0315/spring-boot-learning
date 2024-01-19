package com.glacier.cache.aspect;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.SimpleEvaluationContext;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Objects;

/**
 * date 2024-01-09 16:33
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Aspect
@RequiredArgsConstructor
public class CacheEvictAspect {
    public static final ExpressionParser EXPRESSION_PARSER = new SpelExpressionParser();

    /**
     * 延迟时间
     */
    public static final int DEFAULT_DELAY = 500;
    private final ThreadPoolTaskExecutor threadPoolTaskExecutor;
    private final CacheManager cacheManager;

    /**
     * 切入点,基于注解实现的切入点  加上该注解的都是Aop切面的切入点
     */
    @Pointcut("@annotation(org.springframework.cache.annotation.CacheEvict)")
    public void pointCut() {

    }

    /**
     * 环绕通知非常强大，可以决定目标方法是否执行，什么时候执行，执行时是否需要替换方法参数，执行完毕是否需要替换返回值。
     * 环绕通知第一个参数必须是org.aspectj.lang.ProceedingJoinPoint类型
     *
     * @param point
     * @return
     */
    @Around("pointCut()")
    public Object aroundAdvice(ProceedingJoinPoint point) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) point.getSignature();
        // 方法对象
        Method method = methodSignature.getMethod();
        // 反射得到自定义注解的方法对象
        CacheEvict annotation = method.getAnnotation(CacheEvict.class);
        // 获取自定义注解的方法对象的参数即name
        String name = annotation.key();

        String key = annotation.key();
        Object[] args = point.getArgs();
        Parameter[] parameters = method.getParameters();
        EvaluationContext context = SimpleEvaluationContext.forReadWriteDataBinding().build();
        if (parameters != null && parameters.length > 0) {
            // 有参数
            for (int i = 0; i < parameters.length; i++) {
                context.setVariable(parameters[i].getName(), args[i]);
            }
        }
        key = EXPRESSION_PARSER.parseExpression(key).getValue(context, String.class);

        log.info("缓存清除:{}", key);
        // 删除缓存
//        if (name != null && !name.isEmpty()) {
//            Objects.requireNonNull(cacheManager.getCache(name)).evictIfPresent(key);
//        }

        // 执行加入双删注解的改动数据库的业务 即controller中的方法业务
        Object proceed = null;
        proceed = point.proceed();
//        threadPoolTaskExecutor.execute(() -> {
//            // 清理缓存
//            try {
//                // 先睡眠2秒
//                Thread.sleep(DEFAULT_DELAY);
//                if (name != null && !name.isEmpty()) {
//                    Objects.requireNonNull(cacheManager.getCache(name)).evictIfPresent(key);
//                }
//                log.info("{} 毫秒后， 清理缓存:{}", DEFAULT_DELAY, name);
//            } catch (InterruptedException e) {
//                throw new RuntimeException(e);
//            }
//
//        });
        // 返回业务代码的值
        return proceed;
    }
}
