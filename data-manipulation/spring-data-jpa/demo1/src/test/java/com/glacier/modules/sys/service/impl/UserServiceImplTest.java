package com.glacier.modules.sys.service.impl;

import com.glacier.modules.sys.dao.UserRepository;
import com.glacier.modules.sys.domain.User;
import com.glacier.modules.sys.service.UserService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;


/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017-05-22 23:20</pre>
 */
@SpringBootTest
class UserServiceImplTest {
	@Mock
	UserRepository userRepository;
	@Autowired
	UserService userService;
	
	@BeforeEach
	void setUp() {
		MockitoAnnotations.openMocks(this);
	}
	
	@Test
	void testDelete() throws Exception {
		this.userService.delete(new User());
	}
	
	@Test
	void testDeleteById() throws Exception {
		this.userService.deleteById("402894817e70aa23017e70aa45e8029e");
	}
	
	@Test
	void testFindAll() throws Exception {
		List<User> result = this.userService.findAll();
		Assertions.assertNotNull(result, "查询错误");
	}
	
	@Test
	void testFindOne() throws Exception {
		User result = this.userService.findById("402894817e70aa23017e70aa45e8029e");
		Assertions.assertNotNull(result, "查询错误");
	}
	
	@Test
	void testSave() throws Exception {
		User result = this.userService.save(new User());
		Assertions.assertNotNull(result, "错误");
	}
	
	@Test
	void testSaveOrUpdate() throws Exception {
		this.userService.saveOrUpdate(new User());
	}
	
	@Test
	void testUpdate() throws Exception {
		this.userService.update(new User());
	}
	
	@Test
	void testUpdateUserPassWord() throws Exception {
		this.userService.updateUserPassWord("password", "id");
	}
}
