package com.glacier.stm.service.impl;

import com.glacier.stm.entity.Order;
import com.glacier.stm.enums.Events;
import com.glacier.stm.enums.States;
import com.glacier.stm.service.OrderService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.statemachine.StateMachine;
import org.springframework.statemachine.StateMachineEventResult;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

/**
 * date 2024-02-07 10:33
 * 订单服务
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Service
public class OrderServiceImpl implements OrderService {
    private final Map<Long, Order> orders = new ConcurrentHashMap<>(100);
    @Resource
    private StateMachine<States, Events> stateMachine;

    @Override
    public Order create(long id) {
        Order order = new Order();
        order.setOrderStatus(States.WAIT_PAYMENT);
        order.setOrderId(id);
        orders.put(order.getOrderId(), order);
        log.info("订单创建成功:{}", order);
        return order;
    }

    @Override
    public Order pay(long id) {
        Order order = orders.get(id);
        log.info("尝试支付，订单号：{}", id);
        Message<Events> message = MessageBuilder.withPayload(Events.PAYED).
                setHeader("order", order).build();
        sendMessage(message, (r) -> {
            log.info("支付成功后下一步，返回值：{}", r);
        });
        return order;
    }

    @Override
    public Order deliver(long id) {
        Order order = orders.get(id);
        log.info(" 尝试发货，订单号：{}", id);
        Message<Events> message = MessageBuilder.withPayload(Events.DELIVERY)
                .setHeader("order", order).build();
        sendMessage(message, (r) -> {
            log.info("发货成功后下一步，返回值：{}", r);
        });
        return order;
    }


    @Override
    public Order receive(long id) {
        Order order = orders.get(id);
        log.info(" 尝试收货，订单号：{}", id);
        Message<Events> message = MessageBuilder.withPayload(Events.RECEIVED)
                .setHeader("order", order).build();
        sendMessage(message, (r) -> {
            log.info("收货成功后下一步，返回值：{}", r);
        });
        return order;
    }


    @Override
    public Map<Long, Order> getOrders() {
        return orders;
    }

    /**
     * 发送消息
     *
     * @param message  消息
     * @param consumer 结果处理
     */
    private void sendMessage(Message<Events> message,
                             Consumer<StateMachineEventResult<States, Events>> consumer) {
        stateMachine.sendEvent(Mono.just(message))
                .doOnComplete(() -> {
                    log.info(" 发送成功，消息：{}", message);
                })
                .doOnError(throwable -> {
                    log.info(" 发送失败，消息：{}", message);
                })
                .doOnNext(consumer)
                .subscribe();
    }
}
