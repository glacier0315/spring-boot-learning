package com.glacier.producer;

import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.messaging.support.MessageBuilder;

/**
 * date 2022-01-30 20:53
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RocketMQTemplateTest {
	
	@Autowired
	private RocketMQTemplate rocketMqTemplate;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	@Test
	void send1() {
		rocketMqTemplate.convertAndSend("test-topic-1", "Hello, World!");
	}
	
	@Test
	void send2() {
		rocketMqTemplate.send("test-topic-1",
				MessageBuilder.withPayload("Hello, World! I'm from spring message")
						.build());
		
	}
}
