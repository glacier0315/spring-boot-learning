package com.glacier.mybatis.service.impl;

import com.glacier.mybatis.entity.User;
import com.glacier.mybatis.mapper.UserMapper;
import com.glacier.mybatis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * date 2022-01-21 08:09
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
	private final UserMapper userMapper;
	
	@Autowired
	public UserServiceImpl(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	/**
	 * 查询所有
	 *
	 * @return 所有实例
	 */
	@Override
	public List<User> selectAll() {
		return userMapper.selectAll();
	}
}
