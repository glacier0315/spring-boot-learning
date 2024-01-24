package com.glacier.produce;

import com.glacier.consts.Constant;
import com.glacier.domain.ReliableMsg;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Component;

import java.util.UUID;
import java.util.concurrent.CompletableFuture;

/**
 * date 2024-01-24 10:36
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class KafkaProducer {
    @Resource
    private KafkaTemplate<String, Object> kafkaTemplate;

    /**
     * 发送消息
     *
     * @param body 消息体
     */
    public void send(Object body) {
        send(Constant.TOPIC_1, "", body);
    }

    /**
     * 发送消息
     *
     * @param topic 主题
     * @param body  消息体
     */
    public void send(String topic, Object body) {
        send(topic, "", body);
    }

    /**
     * 发送消息
     *
     * @param topic 主题
     * @param key   主题
     * @param body  消息体
     */
    public void send(String topic, String key, Object body) {
        ReliableMsg<Object> msg = new ReliableMsg<>(UUID.randomUUID().toString(), body, System.currentTimeMillis());
        log.info("准备发送消息：{}", msg);
        //发送消息
        CompletableFuture<SendResult<String, Object>> future = kafkaTemplate.send(topic, key, msg);

        // 发送成功
        future.thenAccept(result -> {
            log.info("发送成功 message={} with offset={}", msg, result.getRecordMetadata().offset());
        });

        // 发送失败
        future.exceptionally(e -> {
            log.error("发送失败 message={}", msg, e);
            // 处理失败
            return null;
        });
//        future.whenComplete((result, ex) -> {
//            if (ex == null) {
//                log.info("发送成功 message={} with offset={}", msg, result.getRecordMetadata().offset());
//            } else {
//                log.error("发送失败 message={}", msg, ex);
//            }
//        });
    }

}
