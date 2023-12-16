package com.galcier.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * date 2023-12-16 10:47
 *
 * @author glacier
 * @version 1.0
 */
@Data
public class User implements Serializable {
    private static final long serialVersionUID = 5254666100128597280L;

    private String username;
    private String password;

}
