package com.glacier.controller;

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
    public String send(@RequestParam("nickname") String nickname) {
        kafkaProducer.send(User.builder()
                .id(UUID.randomUUID()
                        .toString()
                        .replace("-", ""))
                .nickname(nickname)
                .build());
        return String.format("消息 %s 发送成功！", nickname);
    }
}
