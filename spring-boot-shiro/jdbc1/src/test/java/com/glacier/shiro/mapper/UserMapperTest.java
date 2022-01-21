package com.glacier.shiro.mapper;

import com.glacier.shiro.entity.User;
import com.glacier.shiro.entity.builder.UserBuilder;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * date 2022-01-21 16:09
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
	void findByUsername() {
		String username = "admin";
		Optional<User> optional = userMapper.findByUsername(username);
		Assertions.assertNotNull(optional);
		Assertions.assertTrue(optional.isPresent());
	}
	
	@Test
	void findAll() {
		List<User> users = userMapper.findAll();
		Assertions.assertNotNull(users);
		Assertions.assertFalse(users.isEmpty());
	}
	
	@Test
	void deleteById() {
		int delete = userMapper.deleteById("1");
		Assertions.assertTrue(delete >= 0);
	}
	
	@Test
	void insert() {
		int insert = userMapper.insert(
				UserBuilder.anUser()
						.id(UUID.randomUUID().toString().replace("-", ""))
						.username("ceshi")
						.password("ceshi")
						.nickname("ceshi")
						.build());
		Assertions.assertTrue(insert > 0);
	}
}
