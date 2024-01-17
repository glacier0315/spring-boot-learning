package com.glacier.controller;

import com.glacier.domain.Address;
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
	void index() throws Exception {
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
	 *
	 * @param username
	 */
	private User bookServiceMockBean(String username) {
		SecureRandom random = new SecureRandom();
		User user = User.builder()
				.id(UUID.randomUUID().toString().replace("-", ""))
				.username("user_1")
				.password("passwd_1")
				.nickname("昵称_1")
				.birthday(LocalDate.now())
				.idCard("1237489098765432546547851")
				.sex(String.valueOf(random.nextInt(1)))
				.duty("duty_1")
				.joinDate(LocalDateTime.now())
				.height(random.nextDouble())
				.weight(random.nextDouble())
				.address(Address.builder()
						.country("country_1")
						.province("province_1")
						.city("city_1")
						.detail("detail_1")
						.build())
				.build();

		BDDMockito.given(userService.findByUsername(username))
				.willReturn(user);
		return user;
	}
}
