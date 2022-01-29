package com.glacier.consumer;

import org.apache.rocketmq.spring.annotation.MessageModel;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-30 21:05
 * 广播模式
 * @author glacier
 * @version 1.0
 */
@Component
@RocketMQMessageListener(
		topic = "test-topic-1", 		//主题
		consumerGroup = "my-consumer_test-topic-2",	//消费组
		messageModel = MessageModel.BROADCASTING //开启广播模式
)
public class RocketMqFanoutReceiver implements RocketMQListener<String> {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RocketMqFanoutReceiver.class);
	
	@Override
	public void onMessage(String message) {
		LOGGER.info("fanout received message: {}", message);
	}
}
