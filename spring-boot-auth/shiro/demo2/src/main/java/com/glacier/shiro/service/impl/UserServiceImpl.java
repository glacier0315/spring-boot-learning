package com.glacier.shiro.service.impl;

import com.glacier.shiro.realm.entity.UserInfo;
import com.glacier.shiro.service.UserService;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * date 2021-04-27 09:46
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
    
    /**
     * 根据用户名查找用户
     *
     * @param username 用户名
     * @return
     */
    @Override
    public Optional<UserInfo> findUserByUsername(String username) {
        if ("admin".equals(username)) {
            UserInfo userInfo = new UserInfo();
            userInfo.setId("1");
            userInfo.setUsername(username);
            userInfo.setNickname("超级管理员");
            userInfo.setPassword("admin");
            return Optional.of(userInfo);
        }
        return Optional.empty();
    }
}
