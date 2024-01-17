package com.glacier.cache.factory;

import com.glacier.cache.proxy.EnhancedCacheInvocationHandler;
import com.glacier.cache.proxy.EnhancedCacheManagerInvocationHandler;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;

import java.lang.reflect.Proxy;

/**
 * date 2024-01-17 19:47
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class CacheProxyFactory {

    /**
     * 通过该方法可以生成任意目标类所对应的代理类
     *
     * @param target 被代理对象
     * @return 代理对象
     */
    @SuppressWarnings("unchecked")
    public static <T extends CacheManager> T getEnhancedCacheManagerProxy(T target) {
        Class<?> beanClass = target.getClass();
        return (T) Proxy.newProxyInstance(beanClass.getClassLoader(),
                beanClass.getInterfaces(),
                new EnhancedCacheManagerInvocationHandler<>(target));
    }

    /**
     * 通过该方法可以生成任意目标类所对应的代理类
     *
     * @param target 被代理对象
     * @return 代理对象
     */
    @SuppressWarnings("unchecked")
    public static <T extends Cache> T getEnhancedCacheProxy(T target) {
        Class<?> beanClass = target.getClass();
        return (T) Proxy.newProxyInstance(beanClass.getClassLoader(),
                beanClass.getInterfaces(),
                new EnhancedCacheInvocationHandler<>(target));
    }
}
