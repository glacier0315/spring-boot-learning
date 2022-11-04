package com.glacier.jersey.rest;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

/**
 * date 2022-01-19 13:09
 *
 * @author glacier
 * @version 1.0
 */
@AutoConfigureMockMvc
@SpringBootTest
class UserRestResourceTest {
	
	@Autowired
	private MockMvc mockMvc;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void list() {
	}
	
	@Test
	void find() {
	}
	
	@Test
	void save() {
	}
	
	@Test
	void update() {
	}
}
