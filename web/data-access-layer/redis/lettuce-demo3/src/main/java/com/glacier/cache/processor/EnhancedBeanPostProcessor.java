package com.glacier.cache.processor;

import com.glacier.cache.factory.CacheProxyFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.cache.CacheManager;

/**
 * date 2024-01-09 16:35
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class EnhancedBeanPostProcessor implements BeanPostProcessor {

    @Override
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
//        log.info("初始化前，beanName：{}，bean: {}", beanName, bean);
        if (bean instanceof CacheManager cacheManager) {
            Object proxyInstance = CacheProxyFactory.getEnhancedCacheManagerProxy(cacheManager);
            log.info("代理 CacheManager：{}, {}", cacheManager, proxyInstance);
//            return proxyInstance;
        }
        return BeanPostProcessor.super.postProcessBeforeInitialization(bean, beanName);
    }

    @Override
    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
//        log.info("初始化后，beanName：{}，bean: {}", beanName, bean);
        return BeanPostProcessor.super.postProcessAfterInitialization(bean, beanName);
    }
}
