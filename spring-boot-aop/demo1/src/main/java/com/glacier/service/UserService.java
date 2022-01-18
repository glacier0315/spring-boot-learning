package com.glacier.service;

import com.glacier.domain.User;

import java.util.List;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
	
	/**
	 * 查询用户
	 * @param username
	 * @return
	 */
	User findByUsername(String username);
	
	/**
	 * 查询所有
	 * @return
	 */
	List<User> findAll();
	
	/**
	 * 查询
	 * @param user
	 * @return
	 */
	List<User> findList(User user);
}
