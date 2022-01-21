package com.glacier.sys.mapper;

import com.glacier.sys.domain.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * date 2022-01-21 15:50
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RoleMapperTest {
	@Autowired
	private RoleMapper roleMapper;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void findByUserId() {
		String userId = "1";
		List<Role> roles = roleMapper.findByUserId(userId);
		Assertions.assertNotNull(roles);
		Assertions.assertFalse(roles.isEmpty());
	}
}
