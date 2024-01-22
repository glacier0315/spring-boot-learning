package com.glacier.consumer;

import com.glacier.cons.Constant;
import com.glacier.domain.ReliableMsg;
import com.rabbitmq.client.Channel;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * date 2024-01-22 21:49
 *
 * @author glacier
 * @version 1.0
 */
@RabbitListener(queues = Constant.DEAD_LETTER_QUEUE_NAME)
@Slf4j
@Component
public class DeadQueueConsumer {

    /**
     * 收到消息执行的动作，处理String消息，自动根据消息body的类型适配合适的handler方法
     *
     * @param body
     * @param message
     */
    @SneakyThrows
    @RabbitHandler
    public void messageHandler(String body, Message message, Channel channel) {
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        log.info("接收到 死信消息 msgTag： {}", deliveryTag);
        log.info("接收到 死信消息 body： {}", body);
        log.info("接收到 死信消息 message： {}", message);
        log.info("接收到 死信消息 MessageId： {}", message.getMessageProperties().getMessageId());
        log.info("接收到 死信消息 correlationId： {}", message.getMessageProperties().getCorrelationId());

        try {
            // 模拟业务抛异常
            /*
             * 手动签收
             * 无异常就确认消息
             * basicAck(long deliveryTag, boolean multiple)
             * deliveryTag:取出来当前消息在队列中的的索引;
             * multiple:为true的话就是批量确认,如果当前deliveryTag为5,那么就会确认
             * deliveryTag为5及其以下的消息;一般设置为false
             */
            channel.basicAck(deliveryTag, false);
            log.info("1 dead 消费成功");
        } catch (IOException e) {
            channel.basicNack(deliveryTag, false, true);
        }
    }

    /**
     * 收到消息执行的动作, 处理ReliableMsg消息，自动根据消息body的类型适配合适的handler方法
     *
     * @param reliableMsg 消息
     */
    @SneakyThrows
    @RabbitHandler
    public void messageHandler(ReliableMsg reliableMsg, Message message, Channel channel) {
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        log.info("接收到 死信消息 tag: {}, ReliableMsg： {}", deliveryTag, reliableMsg);
        log.info("接收到 死信消息 Message： {}", message);
        log.info("接收到 死信消息 Headers： {}", message.getMessageProperties().getHeaders());
        try {
            /*
             * 手动签收
             * 无异常就确认消息
             * basicAck(long deliveryTag, boolean multiple)
             * deliveryTag:取出来当前消息在队列中的的索引;
             * multiple:为true的话就是批量确认,如果当前deliveryTag为5,那么就会确认
             * deliveryTag为5及其以下的消息;一般设置为false
             */
            channel.basicAck(deliveryTag, true);
            log.info("2 dead 消费成功");
        } catch (IOException e) {
            /*
             * 有异常就绝收消息
             * basicNack(long deliveryTag, boolean multiple, boolean requeue)
             * requeue:true为将消息重返当前消息队列,还可以重新发送给消费者;
             *         false:将消息丢弃
             */
            channel.basicNack(deliveryTag, false, true);

            /*
             * channel.basicNack 与 channel.basicReject 的区别在于basicNack可以拒绝多条消息，而basicReject一次只能拒绝一条消息
             */
//            channel.basicReject(deliveryTag, true);
        }
    }

}
