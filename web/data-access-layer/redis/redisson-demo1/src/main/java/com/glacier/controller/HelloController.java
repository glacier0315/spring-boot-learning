package com.glacier.controller;

import com.glacier.service.HelloService;
import com.glacier.service.impl.HelloServiceImpl;
import jakarta.annotation.Resource;
import org.redisson.api.RRemoteService;
import org.redisson.api.RedissonClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2024-01-17 13:30
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping("/hello")
public class HelloController {

    @Resource
    private RedissonClient redissonClient;

    /**
     * 注册远程服务
     *
     * @return
     */
    @RequestMapping("/reg")
    public String reg() {
        RRemoteService remoteService = redissonClient.getRemoteService();

        // 注册远程服务，能够同时处理多达 12 个调用
        remoteService.register(HelloService.class, new HelloServiceImpl(), 12);
        return "Hello World!";
    }

    /**
     * 调用远程服务
     *
     * @return
     */
    @RequestMapping("/say")
    public String say() {
        RRemoteService remoteService = redissonClient.getRemoteService();
        HelloService service = remoteService.get(HelloService.class);
        return service.hello("glacier");
    }
}
