package com.galcier.listener;

import com.galcier.domain.User;
import com.galcier.event.UserEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationListener;

/**
 * date 2023-12-16 11:03
 * 方式一: 实现ApplicationListener接口
 *
 * @author glacier
 * @version 1.0
 */
public class UserEventListener implements ApplicationListener<UserEvent> {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserEventListener.class);

    @Override
    public void onApplicationEvent(UserEvent event) {
        User user = (User) event.getSource();
        LOGGER.info("处理事件, 用户名： {}， 密码： {}, 当前线程： {}", user.getUsername(), user.getPassword(),
                Thread.currentThread().getName());
    }
}
