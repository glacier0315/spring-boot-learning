package com.glacier.mybatis;

import org.jasypt.encryption.StringEncryptor;
import org.jasypt.util.text.BasicTextEncryptor;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2021-12-10 16:47
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class JasyptTest {
	@Autowired
	private StringEncryptor encryptor;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void testJasypt() {
		//BasicTextEncryptor encryptor = new BasicTextEncryptor();
		//// application.properties, jasypt.encryptor.password
		//encryptor.setPassword("abc123456");
		// encrypt root
		System.out.println(encryptor.encrypt("root"));
		System.out.println(encryptor.encrypt("root"));
		// decrypt, the result is root
		System.out.println(encryptor.decrypt("iA6XhdDJsSnn3FU+WZU1+3yjFWEsu+kJjB6gzfgaMk1a9vDWN6CUK8ukniShsvyv"));
		System.out.println(encryptor.decrypt("DdvpB5MqGhGv4O1X2WF+Eg=="));
	}
}
