package com.glacier.mybatis.mapper;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

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
	}
	
	@Test
	void insert() {
	}
	
	@Test
	void selectByPrimaryKey() {
	}
	
	@Test
	void selectAll() {
		userMapper.selectAll()
				.forEach(System.out::println);
	}
	
	@Test
	void updateByPrimaryKey() {
	}
	
	@Test
	void selectList() {
	}
	
	@Test
	void updateDeptByDeptId() {
	}
	
	@Test
	void selectOneByUsername() {
	}
	
	@Test
	void updateProfileByPrimaryKey() {
	}
	
	@Test
	void updateAvatarByPrimaryKey() {
	}
	
	@Test
	void updatePasswordByPrimaryKey() {
	}
}
