package com.glacier.stm.config;

import com.glacier.stm.enums.Events;
import com.glacier.stm.enums.States;
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
public class OrderStatusMachineConfig extends EnumStateMachineConfigurerAdapter<States, Events> {

    /**
     * 配置监听
     */
    @Override
    public void configure(StateMachineConfigurationConfigurer<States, Events> config) throws Exception {
        config.withConfiguration()
                .autoStartup(true)
                .listener(listener());
    }

    /**
     * 配置状态
     */
    @Override
    public void configure(StateMachineStateConfigurer<States, Events> states) throws Exception {
        states.withStates()
                .initial(States.WAIT_PAYMENT)
                .end(States.FINISH)
                .states(EnumSet.allOf(States.class));
    }

    /**
     * 配置状态转换事件关系
     */
    @Override
    public void configure(StateMachineTransitionConfigurer<States, Events> transitions) throws Exception {
        transitions
                .withExternal()
                .source(States.WAIT_PAYMENT)
                .target(States.WAIT_DELIVER)
                .event(Events.PAYED)
                .action(paySuccess(), payError())
                .and()
                .withExternal()
                .source(States.WAIT_DELIVER)
                .target(States.WAIT_RECEIVE)
                .event(Events.DELIVERY)
                .action(deliverySuccess(), deliveryError())
                .and()
                .withExternal()
                .source(States.WAIT_RECEIVE)
                .target(States.FINISH)
                .event(Events.RECEIVED)
                .action(receivedSuccess(), receivedError());
    }

    @Bean
    public StateMachineListener<States, Events> listener() {
        return new OrderStateMachineListener();
    }

    @Bean
    Action<States, Events> paySuccess() {
        return context -> {
            log.info("支付成功， {}", context);
        };
    }

    @Bean
    Action<States, Events> payError() {
        return context -> {
            log.info("支付失败， {}", context);
        };
    }

    @Bean
    Action<States, Events> deliverySuccess() {
        return context -> {
            log.info("发货成功， {}", context);
        };
    }

    @Bean
    Action<States, Events> deliveryError() {
        return context -> {
            log.info("发货失败， {}", context);
        };
    }

    @Bean
    Action<States, Events> receivedSuccess() {
        return context -> {
            log.info("收货成功， {}", context);
        };
    }

    @Bean
    Action<States, Events> receivedError() {
        return context -> {
            log.info("收货失败， {}", context);
        };
    }
}
