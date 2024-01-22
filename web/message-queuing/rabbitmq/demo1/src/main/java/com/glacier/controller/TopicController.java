package com.glacier.controller;

import com.glacier.domain.Address;
import com.glacier.domain.User;
import com.glacier.produce.TopicQueueMessageSender;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping("/topic")
public class TopicController {
    @Resource
    private TopicQueueMessageSender messageSender;

    @RequestMapping("/send1")
    public String send1() {
        messageSender.sendReliableMsg("china.weather",
                User.builder()
                        .username("glacier")
                        .password("123456")
                        .nickname("ice")
                        .sex("男")
                        .duty("开发")
                        .joinDate(null)
                        .weight(70.0)
                        .height(1.75)
                        .birthday(null)
                        .idCard("12345678901234567890")
                        .address(Address.builder()
                                .country("中国")
                                .province("北京")
                                .build())
                        .build());
        return "success";
    }

    @RequestMapping("/send2")
    public String send2() {
        messageSender.sendReliableMsg("china.news",
                User.builder()
                        .username("glacier")
                        .password("123456")
                        .nickname("ice")
                        .sex("男")
                        .duty("开发")
                        .joinDate(null)
                        .weight(70.0)
                        .height(1.75)
                        .birthday(null)
                        .idCard("12345678901234567890")
                        .address(Address.builder()
                                .country("中国")
                                .province("北京")
                                .build())
                        .build());
        return "success";
    }
}
