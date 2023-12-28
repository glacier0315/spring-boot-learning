package com.glacier.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.glacier.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import jakarta.annotation.Resource;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @description
 * @date 2020-01-28 08:46
 */

@SpringBootTest
class UserMaperTest {
	
	@Resource
	private UserMapper userMapper;
	
	@Test
	void selectList() {
		List<User> users = this.userMapper.selectList(null);
		System.out.println(users);
	}
	
	@Test
	void selectPage() {
		Page<User> page = this.userMapper.selectPage(new Page<User>(2, 1), null);
		System.out.println(page.getRecords());
	}
}
