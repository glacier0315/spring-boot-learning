package com.glacier.stm.controller;

import com.glacier.stm.enums.Events;
import com.glacier.stm.enums.States;
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
    private StateMachine<States, Events> stateMachine;

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
    public List<States> info() {
        return stateMachine.getStates()
                .stream()
                .map(State::getId)
                .collect(Collectors.toList());
    }

    @GetMapping("/start")
    public States start() {
        stateMachine.startReactively().block();
        return state();
    }

    @GetMapping("/state")
    public States state() {
        return Mono.defer(() -> Mono.justOrEmpty(stateMachine.getState().getId()))
                .block();
    }

    @GetMapping("/stop")
    public States stop() {
        stateMachine.startReactively().block();
        return state();
    }
}


