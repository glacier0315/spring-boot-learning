package com.galcier.service.impl;

import com.galcier.domain.User;
import com.galcier.enums.HandleType;
import com.galcier.event.CustomEvent;
import com.galcier.event.UserEvent;
import com.galcier.service.UserService;
import jakarta.annotation.Resource;
import lombok.NonNull;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * date 2023-12-16 10:56
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService, ApplicationEventPublisherAware {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

    Map<String, User> userMap = new ConcurrentHashMap<>();
    /**
     * 底层发送事件用的组件，SpringBoot会通过ApplicationEventPublisherAware接口自动注入给我们
     * 事件是广播出去的。所有监听这个事件的监听器都可以收到
     */
    private ApplicationEventPublisher applicationEventPublisher;

    @Resource
    private ApplicationContext applicationContext;

    @Override
    public String register(User user) {
        userMap.put(user.getUsername(), user);
        LOGGER.info("register 当前线程： {}", Thread.currentThread().getName());
        // 发布消息
        applicationEventPublisher.publishEvent(new UserEvent(user, HandleType.REGISTER));
        // 泛型
        applicationEventPublisher.publishEvent(new CustomEvent<>(user));
        // 普通对象
        applicationEventPublisher.publishEvent(user);
        return "success";
    }

    @Override
    public String login(User user) {
        LOGGER.info("login 当前线程： {}", Thread.currentThread().getName());
        // 发布消息
        applicationContext.publishEvent(new UserEvent(user, HandleType.LOGIN));
        // 泛型
        applicationContext.publishEvent(new CustomEvent<>(user));
        // 普通对象
        applicationContext.publishEvent(user);
        return "success";
    }

    @Override
    public String logout(String username) {
        LOGGER.info("logout 当前线程： {}", Thread.currentThread().getName());
        // 发布消息
        applicationEventPublisher.publishEvent(new UserEvent(userMap.get(username), HandleType.LOGIN));
        return "success";
    }

    /**
     * 会被自动调用，把真正发事件的底层组组件给我们注入进来
     *
     * @param applicationEventPublisher event publisher to be used by this object
     */
    @Override
    public void setApplicationEventPublisher(@NonNull ApplicationEventPublisher applicationEventPublisher) {
        this.applicationEventPublisher = applicationEventPublisher;
    }
}
