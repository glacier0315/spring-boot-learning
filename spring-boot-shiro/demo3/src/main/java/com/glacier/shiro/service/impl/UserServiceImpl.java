package com.glacier.shiro.service.impl;

import com.glacier.shiro.realm.entity.UserInfo;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

/**
 * date 2021-04-27 09:46
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
	
	
	/**
	 * 根据用户名查找用户
	 *
	 * @param username 用户名
	 * @return
	 */
	@Override
	public Optional<UserInfo> findUserByUsername(String username) {
		if ("admin".equals(username)) {
			UserInfo userInfo = new UserInfo();
			userInfo.setId("1");
			userInfo.setUsername(username);
			userInfo.setNickname("超级管理员");
			userInfo.setRoles(Set.of("admin", "manager"));
			userInfo.setPermissions(Set.of("user:add", "user:delete"));
			// 与配置里的保持一致
			userInfo.setPassword(new SimpleHash("MD5", "admin",
					ByteSource.Util.bytes(username), 1024)
					.toHex());
			return Optional.of(userInfo);
		}
		return Optional.empty();
	}
}
