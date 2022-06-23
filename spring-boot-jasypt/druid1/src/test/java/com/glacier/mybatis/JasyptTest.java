package com.glacier.mybatis;

import org.jasypt.encryption.StringEncryptor;
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
		System.out.println(encryptor.encrypt("jdbc:mysql://192.168.20.100:3306/sb_learn?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=UTF-8&useSSL=false&autoReconnect=true&failOverReadOnly=false"));
		System.out.println(encryptor.encrypt("root"));
		System.out.println(encryptor.encrypt("root"));
		// decrypt, the result is root
		System.out.println(encryptor.decrypt("PMA9H2EMz+EVPpbR9ACa6gKNZ23hoS8tSv0uE6M5BWSmvSk5J6iYOURCuXdz8T3ncUzszwkcGQF4rUpnq7z1j6HDZHvDfrqg0GnydeWcPMYLGKvayUgFDAMUJm7glApkhZ2A7iHIegYlgeUf/n8CEhMleTWsjyHUqODvvxe1HHJqHWIOe2GdOggWMgiOoft5vjg0Mmv2nC2H5vf7dwu/2AD3o+QHUF3Zy+E9HNEHTTmTdF9tL6dd5Emcfywft3pYQEWF3ss81PvQEYNePebMmw=="));
		System.out.println(encryptor.decrypt("6pjsA/fixrCHw4+AhAEDlQWwAkeGAht6Yu1ph+iRTD0O7KxGyNZgRrsIx7xYvn5E"));
		System.out.println(encryptor.decrypt("0Jj9GOZiOyX5I5DOtH5GNTkSBH8/4Wy9p3HfsNpoDkD+NS+MVzdOXuW9GodoGl3F"));
	}
}
