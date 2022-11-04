package com.glacier.controller;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.BDDMockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
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
	
	@Test
	void save() throws Exception {
		// 测试
		mockMvc.perform(MockMvcRequestBuilders.post("/user/save")
						.contentType(MediaType.APPLICATION_FORM_URLENCODED)
						.characterEncoding("utf-8")
						.param("username", "admi")
						.param("password", "123")
				)
				.andDo(MockMvcResultHandlers.print())
				.andExpect(MockMvcResultMatchers.status().isOk())
				.andExpect(MockMvcResultMatchers.jsonPath("$.status").value(200));
	}
	
	@Test
	void findByUsername() throws Exception {
		String username = "user_1";
		
		// mockbean 开始模拟
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
		// 打桩
		BDDMockito.given(userService.findByUsername(username))
				.willReturn(user);
		// 测试
		mockMvc.perform(MockMvcRequestBuilders.get("/user/findByUsername")
						.param("username", username)
				)
				.andExpect(MockMvcResultMatchers.status().isOk())
				.andExpect(MockMvcResultMatchers.jsonPath("$.data.username").value(username))
				.andExpect(MockMvcResultMatchers.jsonPath("$.data.password").value("passwd_1"))
				.andDo(MockMvcResultHandlers.print());
	}
}
