package com.glacier.openapi.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 16:46
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ToString
public class User implements Serializable {
    @Serial
    private static final long serialVersionUID = -814413975323029546L;
    private String id;
    private String name;
    private String sex;
    private LocalDate birthday;
    private double high;
    private double weight;
}
