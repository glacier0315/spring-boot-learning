package com.glacier.producer;

import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-30 18:02
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class HelloProducer {
	private static final Logger LOGGER = LoggerFactory.getLogger(HelloProducer.class);
	
	private final RocketMQTemplate rocketMqTemplate;
	
	@Autowired
	public HelloProducer(RocketMQTemplate rocketMqTemplate) {
		this.rocketMqTemplate = rocketMqTemplate;
	}
	
	public void send(String topic, String message) {
		rocketMqTemplate.convertAndSend(topic, message);
	}
}
