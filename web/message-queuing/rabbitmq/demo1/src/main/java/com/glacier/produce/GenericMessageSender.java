package com.glacier.produce;

import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessagePostProcessor;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;
import java.util.concurrent.locks.LockSupport;


/**
 * date 2024-01-21 21:50
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class GenericMessageSender {
    @Resource
    private RabbitTemplate rabbitTemplate;

    /**
     * 发送消息
     *
     * @param exchangeName
     * @param routingKey
     * @param message
     */
    public void sendMessage(String exchangeName, String routingKey, Message message) {
        rabbitTemplate.setMandatory(true);
        rabbitTemplate.setConfirmCallback((correlationData, ack, cause) -> {
            if (!ack) {
                // 处理消息发送失败的情况
                log.info("消息发送失败，原因：{}", cause);
                // 记录数据库，下次再发送
            } else {
                log.info("消息发送成功1");
            }
        });
        // 发送MQ消息
        rabbitTemplate.send(exchangeName, routingKey, message);
    }

    /**
     * 发送消息
     *
     * @param exchangeName
     * @param routingKey
     * @param body
     * @param postProcessor
     */
    public void sendMessage(String exchangeName, String routingKey, Object body, MessagePostProcessor postProcessor) {
        MessagePostProcessor processor = Optional.ofNullable(postProcessor)
                .orElseGet(() -> (message) -> message);
        // 关联数据的一个类，交换机无论有没有收到生产者发送的消息，都会返回这个对象
        CorrelationData correlationData = new CorrelationData();
        correlationData.setId(UUID.randomUUID().toString());
        log.info("发送消息 CorrelationData id: {}", correlationData.getId());
        rabbitTemplate.convertAndSend(exchangeName, routingKey, body, processor, correlationData);

        // 发送确认逻辑
        correlationData.getFuture().whenComplete((confirm, throwable) -> {
            if (confirm.isAck()) {
                log.info("消息已经被成功发送, 消息内容: {}", body);
                return;
            }

            log.warn("消息发送未成功发送, 原因:{}, 消息内容:{}", confirm.getReason(), body, throwable);
            // 5秒后再发送
            LockSupport.parkNanos(5 * 1000 * 1000 * 1000L);
            rabbitTemplate.convertAndSend(exchangeName, routingKey, body, processor, correlationData);
        });
    }

}
