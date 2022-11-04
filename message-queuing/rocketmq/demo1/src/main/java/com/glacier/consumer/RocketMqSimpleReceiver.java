package com.glacier.consumer;

import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-30 18:05
 * 负载均衡模式
 * @author glacier
 * @version 1.0
 */
@Component
@RocketMQMessageListener(
		topic = "test-topic-1",  // 指定topic
		consumerGroup = "my-consumer_test-topic-1" //指定消费组
)
public class RocketMqSimpleReceiver implements RocketMQListener<String> {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RocketMqSimpleReceiver.class);
	
	@Override
	public void onMessage(String message) {
		LOGGER.info("received message: {}", message);
	}
}
