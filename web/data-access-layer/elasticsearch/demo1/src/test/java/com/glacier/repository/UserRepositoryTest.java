package com.glacier.repository;

import com.glacier.domain.Address;
import com.glacier.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.security.SecureRandom;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

/**
 * date 2022-01-26 13:36
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserRepositoryTest {

	@Autowired
	private UserRepository userRepository;

	@BeforeEach
	void setUp() {
	}

	@AfterEach
	void tearDown() {
	}

	@Test
	void findByUsername() {
		User user = userRepository.findByUsername("admin");
		System.out.println(user);
	}

	@Test
	void findByNickname() {
		List<User> users = userRepository.findByNickname("12");
		System.out.println(users);
	}

	@Test
	void deleteAll() {
		userRepository.deleteAll();
	}

	@Test
	void save() {
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 150; i++) {
			userRepository.save(User.builder()
					.id(UUID.randomUUID().toString().replace("-", ""))
					.username("user_" + i)
					.password("passwd_" + i)
					.nickname("昵称_" + i)
					.birthday(LocalDate.now())
					.idCard("123748909876543254654785" + i)
					.sex(String.valueOf(random.nextInt(1)))
					.duty("duty_" + i)
					.joinDate(LocalDateTime.now())
					.height(random.nextDouble())
					.weight(random.nextDouble())
					.address(Address.builder()
							.id(UUID.randomUUID().toString().replace("-", ""))
							.country("country_" + i)
							.province("province_" + i)
							.city("city_" + i)
							.detail("detail_" + i)
							.build())
					.build());
		}
	}
}
