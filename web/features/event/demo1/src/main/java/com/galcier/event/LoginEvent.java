package com.galcier.event;

import com.galcier.domain.User;
import lombok.*;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2024-02-07 08:38
 *
 * @author glacier
 * @version 1.0
 */
@Data
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class LoginEvent implements Serializable {

    @Serial
    private static final long serialVersionUID = 3130438904328259583L;
    private User user;
}
