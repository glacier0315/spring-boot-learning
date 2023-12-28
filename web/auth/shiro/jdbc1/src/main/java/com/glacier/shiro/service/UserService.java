package com.glacier.shiro.service;

import com.glacier.shiro.realm.entity.UserInfo;

import java.util.Optional;

/**
 * date 2021-04-27 09:17
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
    
    /**
     * 根据用户名查找用户
     * @param username 用户名
     * @return
     */
    Optional<UserInfo> findUserByUsername(String username);
}
