package com.glacier.lifecycle.bean;

import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * date 2024-01-16 15:58
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class User implements BeanNameAware, BeanFactoryAware, ApplicationContextAware, InitializingBean, DisposableBean {


    private String name;

    private Demo1Service demo1Service;

    public String getName() {
        return name;
    }

    @Value("${user.name:abc}")
    public void setName(String name) {
        this.name = name;
        log.info("User setName 函数调用，参数：{}", name);
    }

    public Demo1Service getDemo1Service() {
        return demo1Service;
    }

    @Resource
    public void setDemo1Service(Demo1Service demo1Service) {
        this.demo1Service = demo1Service;
        log.info("User 依赖注入，参数：{}", demo1Service);
    }

    public User() {
        log.info("User 构造函数 调用");
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        log.info("BeanFactoryAware setBeanFactory 函数调用，参数：{}", beanFactory);
    }

    @Override
    public void setBeanName(String beanName) {
        log.info("BeanNameAware setBeanName 函数调用，参数：{}", beanName);
    }

    @Override
    public void destroy() throws Exception {
        log.info("DisposableBean destroy 函数调用");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        log.info("InitializingBean afterPropertiesSet afterPropertiesSet 函数调用");
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        log.info("ApplicationContextAware setApplicationContext 函数调用，参数：{}", applicationContext);
    }
}
