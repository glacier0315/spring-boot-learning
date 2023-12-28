package com.glacier.sys.service.impl;

import com.glacier.common.core.security.domain.UserVo;
import com.glacier.sys.domain.Role;
import com.glacier.sys.domain.User;
import com.glacier.sys.mapper.RoleMapper;
import com.glacier.sys.mapper.UserMapper;
import com.glacier.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.stream.Collectors;

/**
 * date 2021-07-16 10:31
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService, UserDetailsService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	
	@Override
	public User findByUsername(String username) {
		return userMapper.selectOneByUsername(username);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserVo userVo = new UserVo();
		User user = userMapper.selectOneByUsername(username);
		if(user != null) {
			userVo.setUserId(user.getId());
			userVo.setUsername(user.getUsername());
			userVo.setPassword(user.getPassword());
			//
			userVo.setRoles(
					roleMapper.findByUserId(user.getId())
							.stream()
							.map(Role::getCode)
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
