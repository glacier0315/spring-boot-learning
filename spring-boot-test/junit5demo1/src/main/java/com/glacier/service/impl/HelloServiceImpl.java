package com.glacier.service.impl;

import com.glacier.service.HelloService;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-10 21:45
 */
@Service
public class HelloServiceImpl implements HelloService {

    @Override
    public String say(String name) {
        return Optional.ofNullable(name)
                .map(s -> "hello, I'm " + name)
                .orElseGet(() -> "hello!");
    }
}
