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
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

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
    @Resource
    private StateMachine<States, Events> orderStateMachine;

    private final Map<Long, Order> orders = new ConcurrentHashMap<>(100);

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
        if (!sendEvent(message)) {
            log.info(" 支付失败, 状态异常，订单号：{}", id);
        }
        return orders.get(id);
    }

    @Override
    public Order deliver(long id) {
        Order order = orders.get(id);
        log.info(" 尝试发货，订单号：{}", id);
        Message<Events> message = MessageBuilder.withPayload(Events.DELIVERY)
                .setHeader("order", order).build();
        if (!sendEvent(message)) {
            log.info(" 发货失败，状态异常，订单号：{}", id);
        }
        return orders.get(id);
    }

    @Override
    public Order receive(long id) {
        Order order = orders.get(id);
        log.info(" 尝试收货，订单号：{}", id);
        Message<Events> message = MessageBuilder.withPayload(Events.RECEIVED)
                .setHeader("order", order).build();
        if (!sendEvent(message)) {
            log.info(" 收货失败，状态异常，订单号：{}", id);
        }
        return orders.get(id);
    }


    @Override
    public Map<Long, Order> getOrders() {
        return orders;
    }

    /**
     * 发送状态转换事件
     *
     * @param message
     * @return
     */
    private synchronized boolean sendEvent(Message<Events> message) {
        boolean result = false;
        try {
            orderStateMachine.start();
            result = orderStateMachine.sendEvent(message);
        } catch (Exception e) {
            log.error("发送状态转换事件异常", e);
        } finally {
            if (Objects.nonNull(message)) {
                Order order = (Order) message.getHeaders().get("order");
                if (Objects.nonNull(order) && Objects.equals(order.getOrderStatus(), States.FINISH)) {
                    orderStateMachine.stop();
                }
            }
        }
        return result;
    }
}
