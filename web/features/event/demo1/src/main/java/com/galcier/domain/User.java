package com.galcier.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2023-12-16 10:47
 *
 * @author glacier
 * @version 1.0
 */
@Data
@EqualsAndHashCode
@ToString
@NoArgsConstructor
public class User implements Serializable {
    @Serial
    private static final long serialVersionUID = 5254666100128597280L;

    private String username;
    private String password;

}
