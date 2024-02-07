package com.galcier.service.impl;

import com.galcier.domain.User;
import com.galcier.enums.HandleType;
import com.galcier.event.CustomEvent;
import com.galcier.event.LoginEvent;
import com.galcier.event.UserEvent;
import com.galcier.service.UserService;
import jakarta.annotation.Resource;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
@Service
public class UserServiceImpl implements UserService, ApplicationEventPublisherAware {

    private final static Map<String, User> USER_MAP = new ConcurrentHashMap<>();
    /**
     * 底层发送事件用的组件，SpringBoot会通过ApplicationEventPublisherAware接口自动注入给我们
     * 事件是广播出去的。所有监听这个事件的监听器都可以收到
     */
    private ApplicationEventPublisher applicationEventPublisher;

    @Resource
    private ApplicationContext applicationContext;

    @Override
    public String register(User user) {
        USER_MAP.put(user.getUsername(), user);
        log.info("register 当前线程： {}", Thread.currentThread().getName());
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
        log.info("login 当前线程： {}", Thread.currentThread().getName());
        // 发布消息
        applicationContext.publishEvent(new UserEvent(user, HandleType.LOGIN));
        // 泛型
        applicationContext.publishEvent(new CustomEvent<>(user));
        // 普通对象
        applicationContext.publishEvent(user);
        // 普通对象
        applicationEventPublisher.publishEvent(new LoginEvent(user));
        return "success";
    }

    @Override
    public String logout(String username) {
        log.info("logout 当前线程： {}", Thread.currentThread().getName());
        // 发布消息
        applicationEventPublisher.publishEvent(new UserEvent(USER_MAP.get(username), HandleType.LOGIN));
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
