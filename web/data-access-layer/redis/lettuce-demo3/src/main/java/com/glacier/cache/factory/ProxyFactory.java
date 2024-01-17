package com.glacier.cache.factory;

import com.glacier.cache.proxy.EnhancedInvocationHandler;
import com.glacier.cache.proxy.EnhancedMethodInterceptor;
import com.glacier.cache.proxy.EnhancedProxyMethodInterceptor;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cglib.proxy.Enhancer;

import java.lang.reflect.Proxy;

/**
 * date 2024-01-17 19:47
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ProxyFactory {

    /**
     * 通过该方法可以生成任意目标类所对应的代理类
     *
     * @param clazz 被代理对象类
     * @return 代理对象
     */
    public static Object createProxy(Class<?> clazz) {
        return Enhancer.create(clazz, clazz.getInterfaces(), new EnhancedMethodInterceptor());
    }

    /**
     * 通过该方法可以生成任意目标类所对应的代理类
     *
     * @param target 被代理对象
     * @return 代理对象
     */
    public static Object getProxy(Object target) {
        return Enhancer.create(target.getClass(), new EnhancedProxyMethodInterceptor(target));
    }

    /**
     * 通过该方法可以生成任意目标类所对应的代理类
     *
     * @param target 被代理对象
     * @return 代理对象
     */
    public static Object getJdkProxy(Object target) {
        Class<?> beanClass = target.getClass();
        return Proxy.newProxyInstance(beanClass.getClassLoader(),
                beanClass.getInterfaces(),
                new EnhancedInvocationHandler(target));
    }
}
