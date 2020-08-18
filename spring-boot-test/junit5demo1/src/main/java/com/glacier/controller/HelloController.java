package com.glacier.controller;

import com.glacier.service.HelloService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-10 21:44
 */
@RestController
public class HelloController {
    @Resource
    private HelloService helloService;

    @GetMapping
    public String say(String name) {
        return helloService.say(name);
    }
}
