package com.glacier.consumer;

import com.glacier.cons.Constant;
import com.glacier.domain.ReliableMsg;
import com.rabbitmq.client.Channel;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * date 2024-01-21 21:59
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class DirectQueueSecondConsumer {


    /**
     * 收到消息执行的动作, 处理ReliableMsg消息，自动根据消息body的类型适配合适的handler方法
     *
     * @param reliableMsg 消息
     */
    @SneakyThrows
    @RabbitListener(queues = Constant.DIRECT_QUEUE_NAME)
    public void messageHandler(ReliableMsg reliableMsg, Message message, Channel channel) {
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        log.info("接收到消息 tag: {}, ReliableMsg： {}", deliveryTag, reliableMsg);
        log.info("接收到消息 Message： {}", message);
        log.info("接收到消息 Headers： {}", message.getMessageProperties().getHeaders());
        log.info("接收到消息 MessageId： {}", message.getMessageProperties().getMessageId());
        log.info("接收到消息 correlationId： {}", message.getMessageProperties().getCorrelationId());
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
            log.info("3 direct 消费成功");
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

    /**
     * 收到消息执行的动作, 处理ReliableMsg消息，自动根据消息body的类型适配合适的handler方法
     *
     * @param reliableMsg 消息
     */
    @SneakyThrows
    @RabbitListener(queues = Constant.DIRECT_LAZY_QUEUE_NAME)
    public void messageLazyHandler(ReliableMsg reliableMsg, Message message, Channel channel) {
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        log.info("接收到消息 lazy tag: {}, ReliableMsg： {}", deliveryTag, reliableMsg);
        log.info("接收到消息 lazy Message： {}", message);
        log.info("接收到消息 lazy Headers： {}", message.getMessageProperties().getHeaders());
        log.info("接收到消息 lazy MessageId： {}", message.getMessageProperties().getMessageId());
        log.info("接收到消息 lazy correlationId： {}", message.getMessageProperties().getCorrelationId());
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
            log.info("4 direct 消费成功");
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

