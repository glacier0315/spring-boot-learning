package com.glacier.rmq;

import org.apache.commons.lang3.StringUtils;
import org.apache.rocketmq.spring.core.RocketMQLocalTransactionListener;
import org.apache.rocketmq.spring.core.RocketMQLocalTransactionState;
import org.apache.rocketmq.spring.support.RocketMQUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.Message;
import org.springframework.messaging.converter.StringMessageConverter;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * date 2022-02-02 20:17
 *
 * @author glacier
 * @version 1.0
 */
public class MyRocketMqLocalTransactionListener implements RocketMQLocalTransactionListener {
	private static final Logger LOGGER = LoggerFactory.getLogger(MyRocketMqLocalTransactionListener.class);
	private final Map<Object, String> localTrans = new ConcurrentHashMap<>();
	
	@Override
	public RocketMQLocalTransactionState executeLocalTransaction(Message message, Object o) {
		LOGGER.info("headers {}", message.getHeaders());
		Object id = message.getHeaders()
				.get("id");
		String destination = o.toString();
		localTrans.put(id, destination);
		org.apache.rocketmq.common.message.Message msg =
				RocketMQUtil.convertToRocketMessage(new StringMessageConverter(),
						"UTF-8", destination, message);
		String tags = msg.getTags();
		if (StringUtils.contains(tags, "TagA")) {
			return RocketMQLocalTransactionState.COMMIT;
		} else if (StringUtils.contains(tags, "TagB")) {
			return RocketMQLocalTransactionState.ROLLBACK;
		} else {
			return RocketMQLocalTransactionState.UNKNOWN;
		}
	}
	
	@Override
	public RocketMQLocalTransactionState checkLocalTransaction(Message message) {
		//SpringBoot的消息对象中，并没有transactionId这个属性。跟原生API不一样。
		return RocketMQLocalTransactionState.COMMIT;
	}
}
