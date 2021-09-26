package com.glacier.shiro.service.impl;

import com.glacier.shiro.realm.entity.UserInfo;
import com.glacier.shiro.service.CertService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

/**
 * date 2021-09-26 14:41
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class CertServiceImpl implements CertService {
	
	/**
	 * 根据用户名查找用户
	 *
	 * @param username 用户名
	 * @return
	 */
	@Override
	public Optional<UserInfo> findUserByUsername(String username) {
		if ("test".equals(username)) {
			UserInfo userInfo = new UserInfo();
			userInfo.setId("1");
			userInfo.setUsername(username);
			userInfo.setNickname("测试员");
			userInfo.setRoles(Set.of("test", "manager"));
			userInfo.setPermissions(Set.of("user:add"));
			// 与配置里的保持一致
			userInfo.setPassword(new SimpleHash("SHA1", "test",
					ByteSource.Util.bytes(username), 1024)
					.toHex());
			return Optional.of(userInfo);
		}
		return Optional.empty();
	}
}
