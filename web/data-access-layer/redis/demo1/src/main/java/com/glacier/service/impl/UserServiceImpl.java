package com.glacier.service.impl;

import com.glacier.entity.User;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * date 2021-09-27 15:30
 *
 * @author glacier
 * @version 1.0
 */
@Service
@CacheConfig(cacheNames = "user")
public class UserServiceImpl implements UserService {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	public static final Map<String, User> userMap = new HashMap<>(16);
	
	@Override
	public void addUser(User user) {
		LOGGER.info("添加用户 {}", user);
		userMap.put(user.getUsername(), user);
	}
	
	@Override
	@Cacheable(key = "#username", unless = "#result==null ")
	public User getUserByUsername(String username) {
		LOGGER.info("查询用户！");
		if (!userMap.containsKey(username)) {
			return null;
		}
		return userMap.get(username);
	}
	
	@Override
	@CachePut(key = "#user.username")
	public User updateUser(User user) {
		if (!userMap.containsKey(user.getUsername())) {
			throw new RuntimeException("不存在该用户");
		}
		// 获取存储的对象
		User newUser = userMap.get(user.getUsername());
		// 复制要更新的数据到新对象，因为不能更改用户名信息，所以忽略
		BeanUtils.copyProperties(user, newUser, "username");
		// 将新的对象存储，更新旧对象信息
		userMap.put(newUser.getUsername(), newUser);
		LOGGER.info("更新用户！");
		// 返回新对象信息
		return newUser;
	}
	
	@Override
	@CacheEvict(key = "#username")
	public void deleteByUsername(String username) {
		LOGGER.info("删除用户！");
		userMap.remove(username);
	}
	
}
