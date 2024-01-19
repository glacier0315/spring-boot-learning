package com.glacier.controller;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.BDDMockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.security.SecureRandom;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

/**
 * date 2022-01-18 22:31
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("测试UserController")
@AutoConfigureMockMvc
@SpringBootTest
class UserControllerTest {
	@Autowired
	private MockMvc mockMvc;
	@MockBean
	private UserService userService;

	@BeforeEach
	void setUp() {
	}

	@AfterEach
	void tearDown() {
	}

    @DisplayName("用户列表")
	@Test
	void findByUsername() throws Exception {
		String username = "user_1";

		// mockbean 开始模拟
		User user = bookServiceMockBean(username);
		// 测试
		mockMvc.perform(MockMvcRequestBuilders.get("/user/{username}", username))
				.andExpect(MockMvcResultMatchers.status().isOk())
				.andExpect(MockMvcResultMatchers.jsonPath("$.username").value(username))
				.andExpect(MockMvcResultMatchers.jsonPath("$.password").value("passwd_1"))
				.andDo(MockMvcResultHandlers.print());
	}

	/**
	 * 其他服务未开发，模拟
	 * @param username
	 */
	private User bookServiceMockBean(String username) {
		SecureRandom random = new SecureRandom();
		User user = new User();
		user.setId(UUID.randomUUID().toString().replace("-", ""));
		user.setUsername(username);
		user.setPassword("passwd_1");
		user.setNickname("昵称_1");
		user.setBirthday(LocalDate.now());
		user.setIdCard("123748909876543254654785");
		user.setSex(String.valueOf(random.nextInt(1)));
		user.setDuty("duty_");
		user.setJoinDate(LocalDateTime.now());
		user.setDoubleData(random.nextDouble() + random.nextInt(1));

		BDDMockito.given(userService.findByUsername(username))
				.willReturn(user);
		return user;
	}
}
