package com.glacier.activiti.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

/**
 * date 2021-10-02 17:31
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class MyServiceTest {
	
	@Autowired
	private MyService myService;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void startProcess() {
		myService.startProcess();
	}
	
	@Test
	void getTasks() {
		System.out.println(myService.getTasks("oneTaskProcess"));
	}
}
