package com.glacier.produce;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.UUID;

/**
 * date 2022-01-29 19:52
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RabbitTemplateTest {
	
	@Autowired
	private RabbitTemplate rabbitTemplate;
	
	@BeforeEach
	void setUp() {
	}
	
	@AfterEach
	void tearDown() {
	}
	
	/**
	 * hello world模型（点对点消费）
	 */
	@Test
	void helloWorld() {
		//第一个参数：发送的队列 第二个参数： 发送的信息
		rabbitTemplate.convertAndSend("helloQ",
				"hello spring boot rabbitmq "
						+ UUID.randomUUID()
						.toString()
						.replaceAll("-", ""));
	}
	
	/**
	 * workqueue模式（拿到消息即销毁）
	 */
	@Test
	void work() {
		for (int i = 0; i < 10; i++) {
			rabbitTemplate.convertAndSend("helloQ", "hello spring boot rabbitmq" + i);
		}
	}
	
	/**
	 * Publish模型（发布订阅/fanout模型）
	 */
	@Test
	void fanout() {
		rabbitTemplate.convertAndSend("fanoutsr", "", "hello spring boot rabbitmq");
	}
	
	/**
	 * Routing（静态路由模型）
	 */
	@Test
	void route1() {
		rabbitTemplate.convertAndSend("routesr", "info","hello spring boot rabbitmq");
	}
	
	/**
	 * Routing（静态路由模型）
	 */
	@Test
	void route2() {
		rabbitTemplate.convertAndSend("routesr", "error","hello spring boot rabbitmq");
	}
	
	/**
	 * topics（动态路由）
	 */
	@Test
	void topic1() {
		rabbitTemplate.convertAndSend("topicsr", "order.save.oid","hello spring boot rabbitmq");
	}
}
