package com.glacier.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.Optional;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-10 21:49
 */
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class HelloServiceTest {
    @Resource
    private HelloService helloService;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void say() {
        String name = "jack";
        String say = helloService.say(name);
        Optional.ofNullable(say)
                .ifPresent(System.out::println);
    }
}
