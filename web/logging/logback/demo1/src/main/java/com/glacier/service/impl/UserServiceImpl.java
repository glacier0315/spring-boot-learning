package com.glacier.service.impl;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import jakarta.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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
@Slf4j
@Service
public class UserServiceImpl implements UserService {
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
			user.setDoubleData(random.nextDouble() + random.nextInt(1));

			this.users.add(user);
		}
	}

	/**
	 * 查询用户
	 *
	 * @param username
	 * @return
	 */
	@Override
	public User findByUsername(String username) {
		log.info("findByUsername {}", username);
		return users.stream()
				.filter(user -> username != null && username.equals(user.getUsername()))
				.findFirst()
				.orElse(null);
	}

	@Override
	public List<User> findAll() {
		log.info("findAll");
		return new ArrayList<>(this.users);
	}

	@Override
	public List<User> findList(User user) {
		log.info("findList {}", user);
		return this.users.parallelStream()
				.limit(10)
				.collect(Collectors.toList());
	}
}
