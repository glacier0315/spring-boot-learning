package com.glacier.service.impl;

import com.glacier.domain.User;
import com.glacier.repository.UserRepository;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

/**
 * date 2022-01-18 16:38
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private final UserRepository userRepository;
	
	@Autowired
	public UserServiceImpl(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	/**
	 * 查询用户
	 *
	 * @param username
	 * @return
	 */
	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}
	
	@Override
	public Iterable<User> findAll() {
		return userRepository.findAll();
	}
	
	@Override
	public Iterable<User> findList(User user) {
		return userRepository.findAll(Sort.unsorted());
	}
}
