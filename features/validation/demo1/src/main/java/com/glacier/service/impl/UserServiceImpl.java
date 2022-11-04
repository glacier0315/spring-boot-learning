package com.glacier.service.impl;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.security.SecureRandom;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

/**
 * date 2022-01-18 16:38
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private final Set<User> users = new HashSet<>(200);
	
	@PostConstruct
	public void init() {
		User user = null;
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 150; i++) {
			user = new User();
			user.setId(UUID.randomUUID().toString().replace("-", ""));
			user.setUsername("user_" + i);
			user.setPassword("passwd_" + i);
			user.setNickname("昵称_" + i);
			user.setBirthday(LocalDate.now());
			user.setIdCard("123748909876543254654785" + i);
			user.setSex(String.valueOf(random.nextInt(1)));
			user.setDuty("duty_" + i);
			user.setJoinDate(LocalDateTime.now());
			
			this.users.add(user);
		}
	}
	
	/**
	 * 保存
	 *
	 * @param user
	 * @return
	 */
	@Override
	public int save(User user) {
		if (user == null) {
			return 0;
		}
		if (user.getId() == null && user.getId().isBlank()) {
			user.setId(UUID.randomUUID().toString().replace("-", ""));
			return 1;
		}
		return 1;
	}
	
	/**
	 * 查询用户
	 *
	 * @param username
	 * @return
	 */
	@Override
	public User findByUsername(String username) {
		return users.stream()
				.filter(user -> username != null && username.equals(user.getUsername()))
				.findFirst()
				.orElse(null);
	}
	
	@Override
	public List<User> findAll() {
		return new ArrayList<>(this.users);
	}
	
	@Override
	public List<User> findList(User user) {
		return this.users.parallelStream()
				.limit(10)
				.collect(Collectors.toList());
	}
}
