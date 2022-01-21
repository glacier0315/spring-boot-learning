package com.glacier.quartz.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Map;

/**
 * date 2022-01-21 11:28
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class QuartzServiceTest {
	@Autowired
	private QuartzService quartzService;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void addJob() {
	}
	
	@Test
	void testAddJob() {
	}
	
	@Test
	void updateJob() {
	}
	
	@Test
	void deleteJob() {
	}
	
	@Test
	void pauseJob() {
	}
	
	@Test
	void resumeJob() {
	}
	
	@Test
	void runAJobNow() {
	}
	
	@Test
	void queryAllJob() {
		List<Map<String, Object>> maps = quartzService.queryAllJob();
		System.out.println(maps);
	}
	
	@Test
	void queryRunJob() {
		List<Map<String, Object>> maps = quartzService.queryRunJob();
		System.out.println(maps);
	}
}
