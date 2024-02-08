package com.glacier.stm.config;

import com.glacier.stm.enums.Events;
import com.glacier.stm.enums.States;
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
public class OrderStatusMachineConfig extends StateMachineConfigurerAdapter<States, Events> {

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
        transitions.withExternal()
                .source(States.WAIT_PAYMENT)
                .target(States.WAIT_DELIVER)
                .event(Events.PAYED)
                .and()
                .withExternal()
                .source(States.WAIT_DELIVER)
                .target(States.WAIT_RECEIVE)
                .event(Events.DELIVERY)
                .and()
                .withExternal()
                .source(States.WAIT_RECEIVE)
                .target(States.FINISH)
                .event(Events.RECEIVED);
    }
}
