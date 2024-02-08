package com.glacier.stm.listener;

import com.glacier.stm.enums.Events;
import com.glacier.stm.enums.States;
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
public class OrderStateMachineListener extends StateMachineListenerAdapter<States, Events> {
    @Override
    public void stateChanged(State<States, Events> from, State<States, Events> to) {
        log.info("状态由 {} 修改为 {}", from, to);
    }
}
