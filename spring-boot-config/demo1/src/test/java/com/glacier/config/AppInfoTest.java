package com.glacier.config;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2022-01-19 15:55
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class AppInfoTest {
	
	@Autowired
	private AppInfo appInfo;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void test1() {
		System.out.println(appInfo);
	}
}
