package com.glacier.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2024-01-29 12:52
 *
 * @author glacier
 * @version 1.0
 */
@Data
@EqualsAndHashCode
@ToString
public class DogInfo implements Serializable {

    @Serial
    private static final long serialVersionUID = -7666000411620726239L;
    private Long id;
    private String name;
    private String sex;
    private Integer age;
}
