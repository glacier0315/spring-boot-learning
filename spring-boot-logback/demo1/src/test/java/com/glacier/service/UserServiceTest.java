package com.glacier.service;

import com.glacier.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * date 2022-01-19 10:02
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserServiceTest {
	@Autowired
	private UserService userService;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void findByUsername() {
		String username = "user_1";
		User user = userService.findByUsername(username);
		System.out.println(user);
		Assertions.assertNotNull(user);
		Assertions.assertEquals(user.getUsername(), username, "查询不正确");
		
	}
	
	@Test
	void findAll() {
		List<User> users = userService.findAll();
		System.out.println("size: " + users.size());
	}
	
	@Test
	void findList() {
		List<User> users = userService.findList(new User());
		System.out.println("size: " + users.size());
	}
}
