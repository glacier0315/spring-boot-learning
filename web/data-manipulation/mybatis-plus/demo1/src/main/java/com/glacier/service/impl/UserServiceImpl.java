package com.glacier.service.impl;

import com.glacier.mapper.UserMapper;
import com.glacier.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author glacier
 * @version 1.0
 * @description 用户业务类
 * @date 2019-08-04 21:50
 */
@Transactional(readOnly = true)
@Service
public class UserServiceImpl implements UserService {
	private final UserMapper userMapper;
	
	@Autowired
	public UserServiceImpl(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
}
