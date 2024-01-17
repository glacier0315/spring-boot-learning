package com.glacier.cache.proxy;

import com.glacier.cache.enhance.CacheEventListener;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * date 2024-01-09 16:35
 * jdk 动态代理
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RequiredArgsConstructor
public class EnhancedCacheInvocationHandler<T extends Cache> implements InvocationHandler {

    /**
     * 委托对象
     */
    private final T target;

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        // 进行业务增强
        log.info("JDK动态代理对业务进行了增强处理");
        // 通过反射调用方法本身
        Object obj = method.invoke(target, args);
        // 增强方法
        if ("evict".equals(method.getName())) {
            log.info("增强方法 evict");
            new CacheEventListener(target).evict(args[0]);
        } else if ("clear".equals(method.getName())) {
            log.info("增强方法 clear");
            new CacheEventListener(target).clear();
        }
        log.info("JDK动态代理对业务进行了增强处理结束");
        return obj;
    }
}
