package com.glacier.sys.service;

import com.glacier.sys.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2022-01-21 15:51
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
		String username = "admin";
		User user = userService.findByUsername(username);
		Assertions.assertNotNull(user);
		Assertions.assertEquals(username, user.getUsername());
	}
}
