package com.glacier.stm.listener;

import com.glacier.stm.enums.OrderEventEnum;
import com.glacier.stm.enums.OrderStatusEnum;
import lombok.extern.slf4j.Slf4j;
import org.springframework.statemachine.listener.StateMachineListenerAdapter;
import org.springframework.statemachine.state.State;

/**
 * date 2024-02-07 10:31
 * 状态监听
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class OrderStateMachineListener extends StateMachineListenerAdapter<OrderStatusEnum, OrderEventEnum> {
    @Override
    public void stateChanged(State<OrderStatusEnum, OrderEventEnum> from, State<OrderStatusEnum, OrderEventEnum> to) {
        log.info("状态由 {} 修改为 {}", from, to);
    }
}
