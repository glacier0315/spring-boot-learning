package com.glacier.service.impl;

import com.glacier.service.HelloService;
import lombok.extern.slf4j.Slf4j;

/**
 * date 2024-01-17 13:28
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class HelloServiceImpl implements HelloService {
    @Override
    public String hello(String name) {
        log.info("调用函数， {}", name);
        return "hello " + name;
    }
}
