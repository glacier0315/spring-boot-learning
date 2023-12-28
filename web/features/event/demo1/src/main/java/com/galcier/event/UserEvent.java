package com.galcier.event;

import com.galcier.domain.User;
import com.galcier.enums.HandleType;
import lombok.Getter;
import org.springframework.context.ApplicationEvent;

/**
 * date 2023-12-16 10:49
 *
 * @author glacier
 * @version 1.0
 */
@Getter
public class UserEvent extends ApplicationEvent {

    private final HandleType type;

    public UserEvent(User source, HandleType type) {
        super(source);
        this.type = type;
    }

}
