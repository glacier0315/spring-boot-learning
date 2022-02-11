package com.glacier.consumer;

import com.glacier.constant.Constant;
import com.glacier.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

/**
 * date 2022-02-11 15:23
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class MyConsumerA {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MyConsumerA.class);
	
	
	@KafkaListener(topics = Constant.TOPIC, groupId = Constant.GROUP_A)
	public void onMessage(User user) {
		LOGGER.info("【接受到消息][线程:{} 消息内容：{}]", Thread.currentThread().getName(), user);
	}
}
