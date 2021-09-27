package com.glacier.service;

import com.glacier.entity.User;
import com.glacier.entity.builder.UserBuilder;
import com.glacier.service.impl.UserServiceImpl;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.event.annotation.BeforeTestClass;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * date 2021-09-27 17:09
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserServiceTest {
	
	@Autowired
	private UserService userService;
	
	@BeforeAll
	public static void init() {
		System.out.println("初始化数据");
		UserServiceImpl.userMap
				.put("admin",
						UserBuilder.anUser()
								.id("1")
								.username("admin")
								.password("admin")
								.birthday(LocalDate.now())
								.roles(Stream.of("admin", "user")
										.collect(Collectors.toList()))
								.permissions(Stream.of("user:add", "user:edit")
										.collect(Collectors.toList()))
								.build());
		UserServiceImpl.userMap
				.put("admin9",
						UserBuilder.anUser()
								.id("9")
								.username("admin9")
								.password("admin")
								.birthday(LocalDate.now())
								.roles(Stream.of("admin", "user")
										.collect(Collectors.toList()))
								.permissions(Stream.of("user:add", "user:edit")
										.collect(Collectors.toList()))
								.build());
	}
	
	@AfterAll
	public static void cleanup() {
		System.out.println("清理数据");
	}
	
	@BeforeEach
	void setUp() {
	
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void addUser() {
		User user = UserBuilder.anUser()
				.id("5")
				.username("admin4")
				.password("admin")
				.birthday(LocalDate.now())
				.roles(Stream.of("admin", "user")
						.collect(Collectors.toList()))
				.permissions(Stream.of("user:add", "user:edit")
						.collect(Collectors.toList()))
				.build();
		
		userService.addUser(user);
		
		User user1 = userService.getUserByUsername("admin4");
		Assertions.assertEquals(user1.getId(), "5", "查询用户错误");
		
		User user2 = userService.getUserByUsername("admin4");
		Assertions.assertEquals(user2.getId(), "5", "查询用户错误");
	}
	
	@Test
	void getUserByUsername() {
		User user1 = userService.getUserByUsername("admin9");
		Assertions.assertEquals(user1.getId(), "9", "查询用户错误");
		
		User user2 = userService.getUserByUsername("admin9");
		Assertions.assertEquals(user2.getId(), "9", "查询用户错误");
	}
	
	@Test
	void updateUser1() {
		final User user = UserBuilder.anUser()
				.id("1")
				.username("admin1")
				.password("admin")
				.birthday(LocalDate.now())
				.roles(Stream.of("admin", "user")
						.collect(Collectors.toList()))
				.permissions(Stream.of("user:add", "user:edit")
						.collect(Collectors.toList()))
				.build();
		Assertions.assertThrows(RuntimeException.class, () -> userService.updateUser(user));
	}
	
	@Test
	void updateUser2() {
		final String id = "2";
		User user = UserBuilder.anUser()
				.id(id)
				.username("admin")
				.password("admin2")
				.birthday(LocalDate.now())
				.roles(Stream.of("admin", "test")
						.collect(Collectors.toList()))
				.permissions(Stream.of("user:add", "user:edit")
						.collect(Collectors.toList()))
				.build();
		User updateUser = userService.updateUser(user);
		Assertions.assertEquals(updateUser.getId(), id, "更新失败！");
	}
	
	@Test
	void deleteByUsername() {
		userService.deleteByUsername("admin4");
	}
}
