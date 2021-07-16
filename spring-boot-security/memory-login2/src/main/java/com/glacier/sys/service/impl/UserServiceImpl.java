package com.glacier.sys.service.impl;

import com.glacier.common.core.security.domain.UserVo;
import com.glacier.sys.controller.UserController;
import com.glacier.sys.domain.User;
import com.glacier.sys.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * date 2021-07-16 10:31
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService, UserDetailsService {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public User findByUsername(String username) {
		User user = null;
		if ("admin".equals(username)) {
			user = User.UserBuilder
					.anUser()
					.id("1")
					.username("admin")
					.password(passwordEncoder.encode("admin"))
					.sex(1)
					.build();
		}
		return user;
	}
	
	/**
	 * 查找用户
	 * @param user
	 * @return
	 */
	@Override
	public List<User> findList(User user) {
		LOGGER.info("参数 {}", user);
		List<User> list = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			list.add(User.UserBuilder
					.anUser()
					.id("" + i)
					.username("user" + i)
					.password(passwordEncoder.encode("user" + i))
					.sex(1)
					.build());
		}
		return list;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserVo userVo = new UserVo();
		User user = this.findByUsername(username);
		if (user != null) {
			userVo.setUserId(user.getId());
			userVo.setUsername(user.getUsername());
			userVo.setPassword(user.getPassword());
			//
			userVo.setRoles(Stream.of("admin", "tomcat", "user")
					.collect(Collectors.toList()));
			userVo.setAccountNonExpired(true);
			userVo.setAccountNonLocked(true);
			userVo.setCredentialsNonExpired(true);
			userVo.setEnabled(true);
		} else {
			throw new UsernameNotFoundException("用户名或者密码错误！");
		}
		return userVo;
	}
}
