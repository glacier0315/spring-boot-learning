package com.glacier.cache.proxy;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * date 2024-01-17 19:49
 * cglib 代理
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RequiredArgsConstructor
public class EnhancedMethodInterceptor implements MethodInterceptor {

    /**
     * 这一步是整个过程的关键，代理类的实现要通过Enhancer类，我们需要通过Enhancer类中的create方法创建一个代理对象
     *
     * @param obj    是一个代理对象的引用 (即：增强对象)
     * @param method 是当前执行，即被拦截的被代理类方法
     * @param args   是当前执行方法所用的参数，索引顺序即为方法定义时参数的顺序
     * @param proxy  指的是当前执行的方法的代理对象
     * @return 通过反射调用method对象所表示的方法, 并获取该方法的返回值
     */
    @Override
    public Object intercept(Object obj, Method method, Object[] args, MethodProxy proxy) throws Throwable {
        Object result;
        try {
            // 提供增强代码
            log.info("[动态代理] {}，参数：{}", method.getName(), Arrays.toString(args));
            //通过反射调用method对象所表示的方法,并获取该方法的返回值
            //在具有指定参数的指定对象上调用此method对象表示的底层方法。
            //此处就是通过target来确定调用的是具体哪个类中的方法
            result = proxy.invokeSuper(obj, args);
            log.info("[动态代理] {}，结 果：{}", method.getName(), result);
        } catch (Exception e) {
            log.error("[动态代理] {}，异常", method.getName(), e);
            throw e;
        } finally {
            log.info("[动态代理] {}，方法执行完毕", method.getName());
        }
        return result;
    }
}
