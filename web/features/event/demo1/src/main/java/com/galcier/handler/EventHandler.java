package com.galcier.handler;

import com.galcier.domain.Product;
import com.galcier.domain.User;
import com.galcier.event.CustomEvent;
import com.galcier.event.LoginEvent;
import com.galcier.event.MessageEvent;
import com.galcier.event.UserEvent;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionalEventListener;

/**
 * date 2023-12-16 11:41
 * 方式二： 使用注解方式
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class EventHandler {

    /**
     * 处理用户事件
     *
     * @param event 监听事件
     * @return 发布后续事件
     */
    @Order(11)
    @EventListener(classes = {UserEvent.class})
    public MessageEvent handleUserEvent(UserEvent event) {
        User user = (User) event.getSource();
        log.info("处理用户事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
        return new MessageEvent(user);
    }

    /**
     * 处理用户注册事件
     *
     * @param event 监听事件
     */
    @Order(10)
    @EventListener(classes = {UserEvent.class}, condition = "#event.type.toString().equals('REGISTER')")
    public void handleRegister(UserEvent event) {
        User user = (User) event.getSource();
        log.info("处理用户注册事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
    }

    /**
     * 处理用户登录事件
     *
     * @param event 监听事件
     */
    @Async
    @EventListener(classes = {UserEvent.class}, condition = "#event.type.toString().equals('LOGIN')")
    public void handleLogin(UserEvent event) {
        User user = (User) event.getSource();
        log.info("处理用户登录事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
    }

    /**
     * 处理用户注销事件
     *
     * @param event 监听事件
     */
    @EventListener(classes = {UserEvent.class}, condition = "#event.type.toString().equals('LOGOUT')")
    public void handleLogout(UserEvent event) {
        User user = (User) event.getSource();
        log.info("处理用户注销事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
    }

    /**
     * 处理用户创建事件
     * 可监听不同对象事件
     *
     * @param user
     */
    @Async
    @EventListener
    public void onUserCreated(User user) {
        log.info("处理用户创建事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
    }

    /**
     * 处理实体创建事件
     *
     * @param event
     */
    @EventListener
    public void onProductCreated(CustomEvent<Product> event) {
        Product product = (Product) event.getSource();
        log.info("处理商品创建事件, 名称： {}， 价格： {}, 当前线程： {}", product.getName(), product.getPrice(),
                Thread.currentThread().getName());
    }


    /**
     * 处理后续事件
     *
     * @param event 监听事件
     */
    @EventListener(classes = {MessageEvent.class})
    @Async
    public void handleMessageEvent(MessageEvent event) {
        User user = (User) event.getSource();
        log.info("处理消息事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(), Thread.currentThread().getName());
    }


    /**
     * 处理用户登录事件
     *
     * @param event 监听事件
     */
    @Async
    @TransactionalEventListener(classes = {LoginEvent.class})
    public void handleLoginAsync(LoginEvent event) {
        User user = event.getUser();
        log.info("异步处理用户登录事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
        throw new RuntimeException("测试异常");
    }
}
