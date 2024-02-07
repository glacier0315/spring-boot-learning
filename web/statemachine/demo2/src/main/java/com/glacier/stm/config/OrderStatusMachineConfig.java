package com.glacier.stm.config;

import com.glacier.stm.enums.OrderEventEnum;
import com.glacier.stm.enums.OrderStatusEnum;
import com.glacier.stm.listener.OrderStateMachineListener;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.statemachine.action.Action;
import org.springframework.statemachine.config.EnableStateMachine;
import org.springframework.statemachine.config.EnumStateMachineConfigurerAdapter;
import org.springframework.statemachine.config.builders.StateMachineConfigurationConfigurer;
import org.springframework.statemachine.config.builders.StateMachineStateConfigurer;
import org.springframework.statemachine.config.builders.StateMachineTransitionConfigurer;
import org.springframework.statemachine.listener.StateMachineListener;

import java.util.EnumSet;

/**
 * date 2024-02-07 10:30
 * 订单状态机
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Configuration
@EnableStateMachine
public class OrderStatusMachineConfig extends EnumStateMachineConfigurerAdapter<OrderStatusEnum, OrderEventEnum> {

    /**
     * 配置监听
     */
    @Override
    public void configure(StateMachineConfigurationConfigurer<OrderStatusEnum, OrderEventEnum> config) throws Exception {
        config.withConfiguration()
                .autoStartup(true)
                .listener(listener());
    }

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
        transitions
                .withExternal()
                .source(OrderStatusEnum.WAIT_PAYMENT)
                .target(OrderStatusEnum.WAIT_DELIVER)
                .event(OrderEventEnum.PAYED)
                .action(paySuccess(), payError())
                .and()
                .withExternal()
                .source(OrderStatusEnum.WAIT_DELIVER)
                .target(OrderStatusEnum.WAIT_RECEIVE)
                .event(OrderEventEnum.DELIVERY)
                .action(deliverySuccess(), deliveryError())
                .and()
                .withExternal()
                .source(OrderStatusEnum.WAIT_RECEIVE)
                .target(OrderStatusEnum.FINISH)
                .event(OrderEventEnum.RECEIVED)
                .action(receivedSuccess(), receivedError());
    }

    @Bean
    public StateMachineListener<OrderStatusEnum, OrderEventEnum> listener() {
        return new OrderStateMachineListener();
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> paySuccess() {
        return context -> {
            log.info("支付成功， {}", context);
        };
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> payError() {
        return context -> {
            log.info("支付失败， {}", context);
        };
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> deliverySuccess() {
        return context -> {
            log.info("发货成功， {}", context);
        };
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> deliveryError() {
        return context -> {
            log.info("发货失败， {}", context);
        };
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> receivedSuccess() {
        return context -> {
            log.info("收货成功， {}", context);
        };
    }

    @Bean
    Action<OrderStatusEnum, OrderEventEnum> receivedError() {
        return context -> {
            log.info("收货失败， {}", context);
        };
    }
}
