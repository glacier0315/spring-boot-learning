package com.glacier.service.impl;

import com.glacier.entity.User;
import com.glacier.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.cache.annotation.*;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * date 2021-09-27 15:30
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
@CacheConfig(cacheNames = "user")
public class UserServiceImpl implements UserService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

    public static final Map<String, User> USER_MAP = new HashMap<>(16);

    @Override
    public void addUser(User user) {
        LOGGER.info("添加用户 {}", user);
        USER_MAP.put(user.getUsername(), user);
    }

    @Override
    @Cacheable(key = "#username", unless = "#result==null ")
    public User getUserByUsername(String username) {
        LOGGER.info("查询用户！");
        if (!USER_MAP.containsKey(username)) {
            return null;
        }
        return USER_MAP.get(username);
    }

    @Override
    @CachePut(key = "#user.username")
    public User updateUser(User user) {
        if (!USER_MAP.containsKey(user.getUsername())) {
            throw new RuntimeException("不存在该用户");
        }
        // 获取存储的对象
        User newUser = USER_MAP.get(user.getUsername());
        // 复制要更新的数据到新对象，因为不能更改用户名信息，所以忽略
        BeanUtils.copyProperties(user, newUser, "username");
        // 将新的对象存储，更新旧对象信息
        USER_MAP.put(newUser.getUsername(), newUser);
        LOGGER.info("更新用户！");
        // 返回新对象信息
        return newUser;
    }

    @Override
    @CacheEvict(key = "#username")
    public void deleteByUsername(String username) {
        LOGGER.info("删除用户！");
        USER_MAP.remove(username);
    }

    @Caching(evict = {@CacheEvict(allEntries = true)})
    @Override
    public void deleteAll() {
        LOGGER.info("删除用户！");
        USER_MAP.clear();
    }

}
