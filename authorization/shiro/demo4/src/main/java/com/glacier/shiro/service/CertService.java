package com.glacier.shiro.service;

import com.glacier.shiro.realm.entity.UserInfo;

import java.util.Optional;

/**
 * date 2021-09-26 14:41
 *
 * @author glacier
 * @version 1.0
 */
public interface CertService {
	/**
	 * 根据用户名查找用户
	 * @param username 用户名
	 * @return
	 */
	Optional<UserInfo> findUserByUsername(String username);
}
