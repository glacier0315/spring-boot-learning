package com.glacier.mybatis.mapper;

import com.glacier.mybatis.entity.User;
import com.glacier.mybatis.entity.builder.UserBuilder;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

/**
 * date 2021-12-10 17:17
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
	void deleteByPrimaryKey() {
		int update = userMapper.deleteByPrimaryKey("3d908373717c4539ba02011e2bfc2398");
		Assertions.assertEquals(1, update);
	}
	
	@Test
	void insert() {
		User user = UserBuilder.anUser()
				.id(UUID.randomUUID().toString().replace("-", ""))
				.username("zhangsan")
				.password("zhangsanpw")
				.birthday(LocalDate.of(1990, 10, 11))
				.build();
		int update = userMapper.insert(user);
		Assertions.assertEquals(1, update);
	}
	
	@Test
	void selectByPrimaryKey() {
		User user = userMapper.selectByPrimaryKey("1");
		Assertions.assertNotNull(user);
		Assertions.assertEquals("admin", user.getUsername());
	}
	
	@Test
	void selectAll() {
		List<User> users = userMapper.selectAll();
		Assertions.assertNotNull(users);
		Assertions.assertFalse(users.isEmpty());
	}
	
	@Test
	void updateByPrimaryKey() {
		User user = UserBuilder.anUser()
				.id("651c74980f0f40729b28d6bd9fe32c80")
				.username("zhangsan")
				.password("zhangsanpw")
				.birthday(LocalDate.of(1990, 10, 11))
				.build();
		int update = userMapper.updateByPrimaryKey(user);
		Assertions.assertEquals(1, update);
	}
	
	@Test
	void selectList() {
		List<User> users = userMapper.selectList(
				UserBuilder.anUser()
						.status("1")
						.build());
		Assertions.assertNotNull(users);
		Assertions.assertFalse(users.isEmpty());
	}
	
	@Test
	void selectOneByUsername() {
		User user = userMapper.selectOneByUsername("admin");
		Assertions.assertNotNull(user);
		Assertions.assertEquals("admin", user.getUsername());
	}
}
