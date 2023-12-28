package com.glacier.mybatis.service;

import com.glacier.mybatis.entity.User;

import java.util.List;

/**
 * date 2022-01-21 08:08
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
	/**
	 * 查询所有
	 *
	 * @return 所有实例
	 */
	List<User> selectAll();
}
