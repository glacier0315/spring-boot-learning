package com.glacier.shiro.realm;

import com.glacier.shiro.authc.CustomToken;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Optional;

/**
 * date 2021-04-27 09:14
 *
 * @author glacier
 * @version 1.0
 */
public class UserRealm extends AuthorizingRealm {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserRealm.class);
	private final UserService userService;
	
	public UserRealm(UserService userService) {
		this.userService = userService;
	}
	
	
	/**
	 * 执行授权逻辑
	 *
	 * @param principalCollection
	 * @return
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		LOGGER.info("{} 执行授权逻辑", this.getClass().getName());
		String username = (String) principalCollection.getPrimaryPrincipal();
		return userService.findUserByUsername(username)
				.map(userInfo -> {
					SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
					info.setRoles(userInfo.getRoles());
					info.setStringPermissions(userInfo.getPermissions());
					return info;
				})
				.orElse(null);
	}
	
	/**
	 * 执行认证逻辑
	 *
	 * @param authenticationToken
	 * @return
	 * @throws AuthenticationException
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
		LOGGER.info("{} 执行认证逻辑", this.getClass().getName());
		String username = Optional.ofNullable(authenticationToken)
				.map(AuthenticationToken::getPrincipal)
				.map(Object::toString)
				.orElseThrow(() -> new AccountException("用户名或者密码不存在！"));
		return userService.findUserByUsername(username)
				.map(userInfo -> new SimpleAuthenticationInfo(userInfo.getUsername(),
						userInfo.getPassword(),
						ByteSource.Util.bytes(username),
						this.getClass().getName()))
				.orElseThrow(() -> new AccountException("用户名或者密码不存在！"));
	}
	
	@Override
	public boolean supports(AuthenticationToken token) {
		CustomToken customToken = (CustomToken) token;
		if (super.supports(token) && "1".equals(customToken.getLoginType())) {
			LOGGER.info("当前realm {}", this.getClass());
			return true;
		}
		return false;
	}
}
