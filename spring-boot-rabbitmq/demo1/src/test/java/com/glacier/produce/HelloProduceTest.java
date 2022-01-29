package com.glacier.produce;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

/**
 * date 2022-01-29 19:43
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class HelloProduceTest {
	
	@Autowired
	private HelloProduce helloProduce;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void send() {
		//第一个参数：发送的队列 第二个参数： 发送的信息
		helloProduce.send("helloQ",
				"hello spring boot rabbitmq "
						+ UUID.randomUUID()
						.toString()
						.replaceAll("-", ""));
	}
}
