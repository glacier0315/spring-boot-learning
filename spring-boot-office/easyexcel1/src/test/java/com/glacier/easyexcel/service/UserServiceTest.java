package com.glacier.easyexcel.service;

import com.glacier.easyexcel.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import static org.junit.jupiter.api.Assertions.*;

/**
 * date 2022-01-18 11:39
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserServiceTest {
	
	@Autowired
	private UserService userService;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void findAll() {
	}
	
	@Test
	void findList() {
	}
	
	@Test
	void export() {
		User user = new User();
		try (OutputStream out = new FileOutputStream("d:\\test.xlsx")) {
			userService.export(user, out);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
