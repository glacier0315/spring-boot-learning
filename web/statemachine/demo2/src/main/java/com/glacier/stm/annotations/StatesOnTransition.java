package com.glacier.stm.annotations;

import com.glacier.stm.enums.OrderStatusEnum;
import org.springframework.statemachine.annotation.OnTransition;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * date 2024-02-07 13:25
 *
 * @author glacier
 * @version 1.0
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@OnTransition
public @interface StatesOnTransition {
    OrderStatusEnum[] source() default {};

    OrderStatusEnum[] target() default {};
}
