package com.glacier.consumer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.annotation.*;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-29 18:15
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class HelloConsumer {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(HelloConsumer.class);
	
	@RabbitHandler
	@RabbitListener(queuesToDeclare = @Queue("helloQ"))
	public void handle1(String message) {
		LOGGER.info("handle1:   {}", message);
	}
	
	@RabbitHandler
	@RabbitListener(queuesToDeclare = @Queue("helloQ"))
	public void handle2(String message) {
		LOGGER.info("handle2:   {}", message);
	}
	
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "fanoutsr", type = "fanout")
			)
	})
	public void handle3(String message) {
		LOGGER.info("handle3:   {}", message);
	}
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "fanoutsr", type = "fanout")
			)
	})
	public void handle4(String message) {
		LOGGER.info("handle4:   {}", message);
	}
	
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "routesr", type = "direct"),
					key = {"error"}
			)
	})
	public void handle5(String message) {
		LOGGER.info("handle5:   {}", message);
	}
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "routesr", type = "direct"),
					key = {"error", "info"}
			)
	})
	public void handle6(String message) {
		LOGGER.info("handle6:   {}", message);
	}
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "topicsr", type = "topic"),
					key = {"order.*"}
			)
	})
	public void handle7(String message) {
		LOGGER.info("handle7:   {}", message);
	}
	
	@RabbitListener(bindings = {
			@QueueBinding(
					value = @Queue,//声明临时队列
					exchange = @Exchange(value = "topicsr", type = "topic"),
					key = {"order.#"}
			)
	})
	public void handle8(String message) {
		LOGGER.info("handle8:   {}", message);
	}
}
