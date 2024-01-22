package com.glacier.produce;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.cons.Constant;
import com.glacier.domain.User;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * date 2024-01-22 11:12
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class DirectQueueMessageSenderTest {
    @Resource
    private DirectQueueMessageSender messageSender;
    @Resource
    private RabbitTemplate rabbitTemplate;
    @Resource
    private ObjectMapper objectMapper;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("测试消息确认")
    @Test
    void sendMessage() {
        messageSender.sendMessage("hello");

        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @DisplayName("测试json")
    @Test
    void json1() throws JsonProcessingException {
        User user = User.builder()
                .id("1")
                .nickname("ice")
                .password("123456")
                .idCard("12345678901234567890")
                .sex("男")
                .joinDate(LocalDateTime.now())
                .weight(60.0)
                .birthday(LocalDate.now())
                .duty("开发")
                .height(1.80)
                .build();
        String value = objectMapper.writeValueAsString(user);
        System.out.println(value);
    }

    @DisplayName("测试消息确认1")
    @Test
    void test1() {
        User user = User.builder()
                .id("1")
                .nickname("ice")
                .password("123456")
                .idCard("12345678901234567890")
                .sex("男")
                .joinDate(LocalDateTime.now())
                .weight(60.0)
                .birthday(LocalDate.now())
                .duty("开发")
                .height(1.80)
                .build();
        String value;
        try {
            value = objectMapper.writeValueAsString(user);
            System.out.println(value);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        rabbitTemplate.convertAndSend(Constant.DIRECT_EXCHANGE_NAME, Constant.DIRECT_ROUTING_KEY, value);

        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
