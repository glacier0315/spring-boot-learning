package com.glacier.quartz;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;

/**
 * date 2022-01-21 13:42
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class DataSourceTest {
	@Autowired
	private DataSource dataSource;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void test() {
		System.out.println(dataSource);
		Assertions.assertNotNull(dataSource);
	}
}
