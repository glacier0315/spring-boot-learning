package com.glacier.sys.service;

import com.glacier.sys.domain.User;

/**
 * date 2021-07-16 10:29
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
	/**
	 * 根据用户名查找
	 *
	 * @param username
	 * @return
	 */
	User findByUsername(String username);
}
