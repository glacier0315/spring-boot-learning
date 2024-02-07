package com.glacier.stm.controller;

import com.glacier.stm.service.OrderService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.SecureRandom;

/**
 * date 2024-02-07 10:40
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestController
public class OrderController {
    @Resource
    private OrderService orderService;

    @RequestMapping("/testOrderStatusChange")
    public String testOrderStatusChange() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong();
        orderService.create(id);
        orderService.pay(id);
        orderService.deliver(id);
        orderService.receive(id);
        log.info("全部订单状态：{}", orderService.getOrders());
        return "success";
    }
}
