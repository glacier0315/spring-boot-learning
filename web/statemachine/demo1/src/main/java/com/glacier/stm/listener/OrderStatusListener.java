package com.glacier.stm.listener;

import com.glacier.stm.entity.Order;
import com.glacier.stm.enums.OrderEventEnum;
import com.glacier.stm.enums.OrderStatusEnum;
import lombok.extern.slf4j.Slf4j;
import org.springframework.messaging.Message;
import org.springframework.statemachine.annotation.OnTransition;
import org.springframework.statemachine.annotation.WithStateMachine;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * date 2024-02-07 10:31
 * 状态监听
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
@WithStateMachine
@Transactional
public class OrderStatusListener {
    @OnTransition(source = "WAIT_PAYMENT", target = "WAIT_DELIVER")
    public boolean payTransition(Message<OrderEventEnum> message) {
        Order order = (Order) message.getHeaders().get("order");
        assert order != null;
        order.setOrderStatus(OrderStatusEnum.WAIT_DELIVER);
        log.info("支付，状态机反馈信息：{}", message);
        return true;
    }

    @OnTransition(source = "WAIT_DELIVER", target = "WAIT_RECEIVE")
    public boolean deliverTransition(Message<OrderEventEnum> message) {
        Order order = (Order) message.getHeaders().get("order");
        assert order != null;
        order.setOrderStatus(OrderStatusEnum.WAIT_RECEIVE);
        log.info("发货，状态机反馈信息：{}", message);
        return true;
    }

    @OnTransition(source = "WAIT_RECEIVE", target = "FINISH")
    public boolean receiveTransition(Message<OrderEventEnum> message) {
        Order order = (Order) message.getHeaders().get("order");
        assert order != null;
        order.setOrderStatus(OrderStatusEnum.FINISH);
        log.info("收货，状态机反馈信息：{}", message);
        return true;
    }
}
