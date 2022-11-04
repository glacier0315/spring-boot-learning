package com.glacier.service;

import com.glacier.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 20:45
 */
@SpringBootTest
class UserServiceTest {
	@Autowired
	private UserService userService;
	
	@Test
	void findByUsername() {
		User user = this.userService.findByUsername("admin");
		System.out.println(user);
	}
	
	@Test
	void findAll() {
		List<User> userList = this.userService.findAll();
		if (userList != null && !userList.isEmpty()) {
			userList.forEach(System.out::println);
		} else {
			System.out.println("无数据！");
		}
	}
}
