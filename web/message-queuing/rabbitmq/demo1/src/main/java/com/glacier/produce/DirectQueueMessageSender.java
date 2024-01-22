package com.glacier.produce;

import com.glacier.cons.Constant;
import com.glacier.domain.ReliableMsg;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageBuilder;
import org.springframework.amqp.core.MessageDeliveryMode;
import org.springframework.amqp.core.MessageProperties;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.util.UUID;


/**
 * date 2024-01-21 21:50
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class DirectQueueMessageSender {
    @Resource
    private GenericMessageSender messageSender;

    public void sendMessage(String msg) {
        // 构建消息体
        Message message = MessageBuilder
                // 消息体
                .withBody(msg.getBytes(StandardCharsets.UTF_8))
                .setContentType(MessageProperties.CONTENT_TYPE_TEXT_PLAIN)
                // 持久化
                .setDeliveryMode(MessageDeliveryMode.PERSISTENT)
                .build();
        // 发送MQ消息
        messageSender.sendMessage(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_ROUTING_KEY, message);
    }

    public void sendReliableMsg(Object body) {
        messageSender.sendMessage(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_ROUTING_KEY,
                new ReliableMsg<>(UUID.randomUUID().toString(), body, System.currentTimeMillis()),
                (message) -> message);
    }

    /**
     * 5秒未被消费会路由到死信队列
     *
     * @param body
     */
    public void sendTtlReliableMsg(Object body) {
        messageSender.sendMessage(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_TTL_ROUTING_KEY,
                new ReliableMsg<>(UUID.randomUUID().toString(), body, System.currentTimeMillis()),
                (message) -> {
                    MessageProperties messageProperties = message.getMessageProperties();
                    messageProperties.setExpiration("5000");
                    return message;
                });
    }

    public void sendMessage(Message message) {
        messageSender.sendMessage(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_ROUTING_KEY, message);
    }

    public void sendLazyMessage(Object body) {
        messageSender.sendMessage(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_LAZY_ROUTING_KEY,
                new ReliableMsg<>(UUID.randomUUID().toString(), body, System.currentTimeMillis()),
                (message) -> message);
    }
}
