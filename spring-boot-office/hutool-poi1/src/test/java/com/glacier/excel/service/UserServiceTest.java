package com.glacier.excel.service;

import com.glacier.excel.domain.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;

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
	void findList() throws IOException {
	
	}
	
	@Test
	void exportExcel() throws IOException {
		User user = new User();
		try(OutputStream outputStream = new FileOutputStream("d:\\test_" + System.currentTimeMillis() + ".xlsx")) {
			userService.exportExcel(user, outputStream);
		}
	}
	
	@Test
	void importExcel() throws IOException {
		try (InputStream ins = new FileInputStream("d:\\test_1656578453126.xlsx")) {
			userService.importExcel(ins);
		}
	}
}
