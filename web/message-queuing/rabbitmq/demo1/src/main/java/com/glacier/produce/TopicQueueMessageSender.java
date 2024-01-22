package com.glacier.produce;

import com.glacier.cons.Constant;
import com.glacier.domain.ReliableMsg;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.UUID;


/**
 * date 2024-01-21 21:50
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class TopicQueueMessageSender {
    @Resource
    private GenericMessageSender messageSender;

    public void sendReliableMsg(String routeKey, Object body) {
        messageSender.sendMessage(Constant.TOPIC_EXCHANGE_NAME, routeKey,
                new ReliableMsg<>(UUID.randomUUID().toString(), body, System.currentTimeMillis()),
                (message) -> message);
    }
}
