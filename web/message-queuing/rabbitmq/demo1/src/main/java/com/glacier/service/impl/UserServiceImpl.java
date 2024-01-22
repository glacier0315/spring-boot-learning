package com.glacier.service.impl;

import com.glacier.domain.Address;
import com.glacier.domain.User;
import com.glacier.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
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
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 150; i++) {
			this.users.add(User.builder()
					.id(UUID.randomUUID().toString().replace("-", ""))
					.username("user_" + i)
					.password("passwd_" + i)
					.nickname("昵称_" + i)
					.birthday(LocalDate.now())
					.idCard("123748909876543254654785" + i)
					.sex(String.valueOf(random.nextInt(1)))
					.duty("duty_" + i)
					.joinDate(LocalDateTime.now())
					.height(random.nextDouble())
					.weight(random.nextDouble())
					.address(Address.builder()
							.country("country_" + i)
							.province("province_" + i)
							.city("city_" + i)
							.detail("detail_" + i)
							.build())
					.build());
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
