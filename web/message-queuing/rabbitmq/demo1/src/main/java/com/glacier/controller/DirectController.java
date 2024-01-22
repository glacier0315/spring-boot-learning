package com.glacier.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.domain.Address;
import com.glacier.domain.User;
import com.glacier.produce.DirectQueueMessageSender;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.MessageDeliveryMode;
import org.springframework.amqp.core.MessageProperties;
import org.springframework.amqp.core.MessagePropertiesBuilder;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping("/direct")
public class DirectController {
    @Resource
    private DirectQueueMessageSender messageSender;
    @Resource
    private ObjectMapper objectMapper;
    @Resource
    private MessageConverter messageConverter;

    @RequestMapping("/send1")
    public String send1() {
        String value;
        try {
            value = objectMapper.writeValueAsString("hello1 " + System.currentTimeMillis());
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        messageSender.sendMessage(value);
        return "success";
    }

    @RequestMapping("/send2")
    public String send2() {
        messageSender.sendReliableMsg(User.builder()
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

    @RequestMapping("/send3")
    public String send3() {
        messageSender.sendTtlReliableMsg(User.builder()
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

    @RequestMapping("/send4")
    public String send4() {
        messageSender.sendMessage(
                messageConverter.toMessage(
                        "Hello " + System.currentTimeMillis(),
                        MessagePropertiesBuilder.newInstance()
                                .setContentType(MessageProperties.CONTENT_TYPE_TEXT_PLAIN)
                                // 持久化
                                .setDeliveryMode(MessageDeliveryMode.PERSISTENT)
                                .build()));
        return "success";
    }

    @RequestMapping("/send5")
    public String send5() {
        messageSender.sendLazyMessage(User.builder()
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
