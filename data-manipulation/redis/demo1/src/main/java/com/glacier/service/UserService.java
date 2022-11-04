package com.glacier.service;

import com.glacier.entity.User;

/**
 * date 2021-09-27 17:07
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
	
	void addUser(User user);
	
	User getUserByUsername(String username);
	
	User updateUser(User user);
	
	void deleteByUsername(String username);
}
