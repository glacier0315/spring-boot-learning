package com.glacier.shiro.authc;

import org.apache.shiro.spring.aop.SpringAnnotationResolver;
import org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor;

/**
 * shiro的aop切面
 *
 * @author glacier
 * @version 1.0
 * @date 2020-09-10 15:18
 */
public class AuthAopInterceptor extends AopAllianceAnnotationsAuthorizingMethodInterceptor {

    public AuthAopInterceptor() {
        super();
        // 添加自定义的注解拦截器
        this.methodInterceptors.add(
                new UserTypeMethodHandler(
                        new SpringAnnotationResolver()));
    }
}
