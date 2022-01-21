package com.glacier.service;


import com.glacier.entity.Role;

import java.util.List;

/**
 * 用户业务层
 *
 * @author glacier
 * @version 1.0
 * @date 2019-08-04 21:50
 */
public interface RoleService {
	
	/**
	 * 查找所有角色
	 *
	 * @return
	 */
	List<Role> findAll();
}
