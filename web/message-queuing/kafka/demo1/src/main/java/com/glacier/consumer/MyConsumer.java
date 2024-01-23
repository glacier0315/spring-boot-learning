package com.glacier.consumer;

import com.glacier.consts.Constant;
import com.glacier.domain.ReliableMsg;
import com.glacier.domain.User;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

/**
 * date 2022-02-11 15:23
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class MyConsumer {

    private int count = 0;

    @KafkaListener(topics = Constant.TOPIC)
    public void onMessage1(@Payload ReliableMsg<User> msg,
                           @Header(KafkaHeaders.RECEIVED_PARTITION) int partition,
                           Acknowledgment ack) {
        log.info("0 接受到消息， 内容：{} {}", partition, msg);
        ack.acknowledge();
    }

    @KafkaListener(topics = Constant.TOPIC, groupId = Constant.GROUP_A)
    public void onMessage2(ConsumerRecord<ReliableMsg<User>, String> record, Acknowledgment ack) {
        log.info("A 接受到消息， 内容：{}", record);
        ack.acknowledge();
    }

    @KafkaListener(topics = Constant.TOPIC, groupId = Constant.GROUP_B)
    public void onMessage3(ConsumerRecord<ReliableMsg<User>, String> record, Acknowledgment ack) {
        log.info("B 接受到消息，内容：{}", record);
        ack.acknowledge();
    }

//    @KafkaListener(topics = Constant.TOPIC, groupId = Constant.GROUP_B)
//    public void onMessage4(User msg, Acknowledgment ack) {
//        log.info("C 接受到消息，内容：{}", msg);
//        ack.acknowledge();
//    }
}
