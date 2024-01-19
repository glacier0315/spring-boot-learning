package com.glacier.aop;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Arrays;
import java.util.stream.Collectors;

/**
 * date 2022-01-18 20:53
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Aspect
public class LogAspect {

    /**
     * 切入点指示符如下：
     * execution：用于匹配方法执行的连接点；
     * within：用于匹配指定类型内的方法执行；
     * this：用于匹配当前AOP代理对象类型的执行方法；注意是AOP代理对象的类型匹配，这样就可能包括引入接口也类型匹配；
     * target：用于匹配当前目标对象类型的执行方法；注意是目标对象的类型匹配，这样就不包括引入接口也类型匹配；
     * args：用于匹配当前执行的方法传入的参数为指定类型的执行方法；
     *
     * @within：用于匹配所以持有指定注解类型内的方法；
     * @target：用于匹配当前目标对象类型的执行方法，其中目标对象持有指定的注解；
     * @args：用于匹配当前执行的方法传入的参数持有指定注解的执行；
     * @annotation：用于匹配当前执行方法持有指定注解的方法； bean：Spring AOP扩展的，AspectJ没有对于指示符，用于匹配特定名称的Bean对象的执行方法；
     * reference pointcut：表示引用其他命名切入点，只有@ApectJ风格支持，Schema风格不支持。
     */
    @Pointcut("@annotation(com.glacier.aop.Log)")
    public void logJoin() {
    }

    /**
     * 环绕通知
     */
    @Around(value = "logJoin()")
    public Object arround(ProceedingJoinPoint point) {
        MethodSignature methodSignature = (MethodSignature) point.getSignature();
        // 方法对象
        Method targetMethod = methodSignature.getMethod();
        Parameter[] parameters = targetMethod.getParameters();
        if (parameters != null && parameters.length > 0) {
            log.info("参数名称列表： {}, 值： {}", Arrays.stream(parameters)
                            .map(Parameter::getName)
                            .collect(Collectors.toList()),
                    point.getArgs());
        }
        // 反射得到自定义注解的方法对象
        Log aLog = targetMethod.getAnnotation(Log.class);
        try {
            log.info("1、Around：方法环绕开始....., {}", aLog);
            Object o = point.proceed();
            log.info("1、Around：方法环绕结束，结果是 : {}", o);
            return o;
        } catch (Throwable e) {
            log.error("{} 出现异常：", point.getSignature(), e);
            return "异常";
        }
    }

    /**
     * 方法执行前
     */
    @Before(value = "logJoin()")
    public void before(JoinPoint joinPoint) {
        log.info("2、Before：方法执行开始...");
        log.info("CLASS_METHOD : {}.{}", joinPoint.getSignature().getDeclaringTypeName(), joinPoint.getSignature().getName());
        log.info("ARGS : {}", Arrays.toString(joinPoint.getArgs()));
        printLog();
    }

    /**
     * 方法执行结束，不管是抛出异常或者正常退出都会执行
     */
    @After(value = "logJoin()")
    public void after(JoinPoint joinPoint) {
        log.info("3、After：方法最后执行....., {}", joinPoint.getSignature());
    }

    /**
     * 方法执行结束，增强处理
     */
    @AfterReturning(returning = "ret", pointcut = "logJoin()")
    public void doAfterReturning(Object ret) {
        // 处理完请求，返回内容
        log.info("4、AfterReturning：方法的返回值 : {}", ret);
    }

    /**
     * 后置异常通知
     */
    @AfterThrowing(value = "logJoin()")
    public void throwss(JoinPoint joinPoint) {
        log.error("AfterThrowing：方法异常时执行....., {}", joinPoint.getSignature());
    }

    private void printLog() {
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (attributes == null) {
            return;
        }
        HttpServletRequest request = attributes.getRequest();
        // 记录下请求内容
        log.info("URL : {}", request.getRequestURL());
        log.info("HTTP_METHOD : {}", request.getMethod());
        log.info("IP : {}", request.getRemoteAddr());

    }
}
