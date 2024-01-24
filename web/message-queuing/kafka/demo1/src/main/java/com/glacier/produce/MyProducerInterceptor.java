package com.glacier.produce;

import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.producer.ProducerInterceptor;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.clients.producer.RecordMetadata;

import java.util.Map;

/**
 * date 2024-01-24 16:08
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class MyProducerInterceptor implements ProducerInterceptor {
    @Override
    public ProducerRecord onSend(ProducerRecord producerRecord) {
        log.info("发送： {}", producerRecord);
        return producerRecord;
    }

    @Override
    public void onAcknowledgement(RecordMetadata recordMetadata, Exception e) {
        log.info("发送： {} {}", recordMetadata, e.getMessage());
    }

    @Override
    public void close() {
        log.info("关闭");
    }

    @Override
    public void configure(Map<String, ?> map) {
        log.info("设置： {}", map);
    }
}
