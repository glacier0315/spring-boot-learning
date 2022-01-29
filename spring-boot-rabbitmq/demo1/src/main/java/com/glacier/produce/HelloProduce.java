package com.glacier.produce;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-29 19:39
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class HelloProduce {
	private static final Logger LOGGER = LoggerFactory.getLogger(HelloProduce.class);
	
	private final RabbitTemplate rabbitTemplate;
	
	@Autowired
	public HelloProduce(RabbitTemplate rabbitTemplate) {
		this.rabbitTemplate = rabbitTemplate;
	}
	
	/**
	 * @param queue
	 * @param message
	 */
	public void send(String queue, Object message) {
		LOGGER.info("send {} {}", queue, message);
		rabbitTemplate.convertAndSend(queue, message);
		
	}
}
