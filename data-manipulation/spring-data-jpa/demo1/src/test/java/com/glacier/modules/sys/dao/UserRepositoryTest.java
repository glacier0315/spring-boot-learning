package com.glacier.modules.sys.dao;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import jakarta.annotation.Resource;


@SpringBootTest
class UserRepositoryTest {
	
	@Resource
	private UserRepository userDao;
	
	@Test
	void testSaveS() {
		this.userDao.test();
	}
	
}
