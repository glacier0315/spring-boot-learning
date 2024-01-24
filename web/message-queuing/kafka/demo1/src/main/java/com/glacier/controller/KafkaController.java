package com.glacier.controller;

import com.glacier.consts.Constant;
import com.glacier.domain.User;
import com.glacier.produce.KafkaProducer;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * date 2022-02-11 15:21
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class KafkaController {
    @Resource
    private KafkaProducer kafkaProducer;

    @RequestMapping("/send1")
    public String send() {
        kafkaProducer.send(User.builder()
                .id(UUID.randomUUID()
                        .toString()
                        .replace("-", ""))
                .nickname("Hello" + System.currentTimeMillis())
                .build());
        return "消息发送成功";
    }

    @RequestMapping("/send2")
    public String send2() {
        kafkaProducer.send(Constant.TOPIC_2,
                User.builder()
                        .id(UUID.randomUUID()
                                .toString()
                                .replace("-", ""))
                        .nickname("glacier")
                        .build());
        return "消息发送成功";
    }
}
