package com.glacier.sys.mapper;

import com.glacier.sys.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2022-01-21 15:50
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserMapperTest {
	@Autowired
	private UserMapper userMapper;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void selectOneByUsername() {
		String username = "admin";
		User user = userMapper.selectOneByUsername(username);
		Assertions.assertNotNull(user);
		Assertions.assertEquals(username, user.getUsername());
	}
}
