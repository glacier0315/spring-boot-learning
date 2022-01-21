package com.glacier.service;

import com.glacier.entity.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * date 2022-01-21 09:10
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RoleServiceTest {
	@Autowired
	private RoleService roleService;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void findAll() {
		List<Role> roles = roleService.findAll();
		System.out.println(roles);
	}
}
