package com.galcier.event;

import org.springframework.context.ApplicationEvent;

/**
 * date 2023-12-16 12:23
 *
 * @author glacier
 * @version 1.0
 */
public class MessageEvent extends ApplicationEvent {
    public MessageEvent(Object source) {
        super(source);
    }
}
