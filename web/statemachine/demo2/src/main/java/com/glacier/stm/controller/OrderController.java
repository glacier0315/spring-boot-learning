package com.glacier.stm.controller;

import com.glacier.stm.enums.OrderEventEnum;
import com.glacier.stm.enums.OrderStatusEnum;
import com.glacier.stm.service.OrderService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.statemachine.StateMachine;
import org.springframework.statemachine.state.State;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.security.SecureRandom;
import java.util.List;
import java.util.stream.Collectors;

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
    @Resource
    private StateMachine<OrderStatusEnum, OrderEventEnum> stateMachine;

    @GetMapping("/process")
    public String process() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong();
        orderService.create(id);
        orderService.pay(id);
        orderService.deliver(id);
        orderService.receive(id);
        log.info("全部订单状态：{}", orderService.getOrders());
        return "success";
    }

    @GetMapping("/info")
    public List<OrderStatusEnum> info() {
        return stateMachine.getStates()
                .stream()
                .map(State::getId)
                .collect(Collectors.toList());
    }

    @GetMapping("/start")
    public OrderStatusEnum start() {
        stateMachine.startReactively().block();
        return state();
    }

    @GetMapping("/state")
    public OrderStatusEnum state() {
        return Mono.defer(() -> Mono.justOrEmpty(stateMachine.getState().getId()))
                .block();
    }

    @GetMapping("/stop")
    public OrderStatusEnum stop() {
        stateMachine.startReactively().block();
        return state();
    }
}


