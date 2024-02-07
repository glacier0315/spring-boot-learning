package com.glacier.stm.config;

import com.glacier.stm.enums.OrderEventEnum;
import com.glacier.stm.enums.OrderStatusEnum;
import org.springframework.context.annotation.Configuration;
import org.springframework.statemachine.config.EnableStateMachine;
import org.springframework.statemachine.config.StateMachineConfigurerAdapter;
import org.springframework.statemachine.config.builders.StateMachineStateConfigurer;
import org.springframework.statemachine.config.builders.StateMachineTransitionConfigurer;

import java.util.EnumSet;

/**
 * date 2024-02-07 10:30
 * 订单状态机
 * @author glacier
 * @version 1.0
 */
@Configuration
@EnableStateMachine
public class OrderStatusMachineConfig extends StateMachineConfigurerAdapter<OrderStatusEnum, OrderEventEnum> {

    /**
     * 配置状态
     */
    @Override
    public void configure(StateMachineStateConfigurer<OrderStatusEnum, OrderEventEnum> states) throws Exception {
        states.withStates()
                .initial(OrderStatusEnum.WAIT_PAYMENT)
                .end(OrderStatusEnum.FINISH)
                .states(EnumSet.allOf(OrderStatusEnum.class));
    }

    /**
     * 配置状态转换事件关系
     */
    @Override
    public void configure(StateMachineTransitionConfigurer<OrderStatusEnum, OrderEventEnum> transitions) throws Exception {
        transitions.withExternal()
                .source(OrderStatusEnum.WAIT_PAYMENT)
                .target(OrderStatusEnum.WAIT_DELIVER)
                .event(OrderEventEnum.PAYED)
                .and()
                .withExternal()
                .source(OrderStatusEnum.WAIT_DELIVER)
                .target(OrderStatusEnum.WAIT_RECEIVE)
                .event(OrderEventEnum.DELIVERY)
                .and()
                .withExternal()
                .source(OrderStatusEnum.WAIT_RECEIVE)
                .target(OrderStatusEnum.FINISH)
                .event(OrderEventEnum.RECEIVED);
    }
}
