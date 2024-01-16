package com.glacier.cache.annotation;

import org.springframework.core.annotation.AliasFor;

import java.lang.annotation.*;

/**
 * date 2024-01-09 16:32
 * 延时双删
 *
 * @author glacier
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Target(ElementType.METHOD)
public @interface ClearAndReloadCache {

    /**
     *
     * @return
     */
    String name() default "";

    /**
     *
     * @return
     */
    @AliasFor("name")
    String value() default "";

    /**
     *
     * @return
     */
    String key() default "";
}
