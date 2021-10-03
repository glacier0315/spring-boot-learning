package com.glacier.shiro.authc;

import org.apache.shiro.authz.annotation.RequiresAuthentication;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 权限注解 用于检查权限 规定访问权限
 *
 * @author glacier
 * @version 1.0
 * @date 2020-09-10 15:18
 */
@RequiresAuthentication
// 始终不会丢弃，运行期也保留该注解
@Retention(RetentionPolicy.RUNTIME)
// 标注方法注解
@Target({ElementType.METHOD})
public @interface UserTypePermission {

    /**
     * 用户类型
     * @return
     */
    String[] userTypes() default {"1", "2"};
}
