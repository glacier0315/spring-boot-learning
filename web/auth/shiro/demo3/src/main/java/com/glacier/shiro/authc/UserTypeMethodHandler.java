package com.glacier.shiro.authc;

import org.apache.shiro.aop.AnnotationResolver;
import org.apache.shiro.aop.MethodInvocation;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.aop.AuthorizingAnnotationMethodInterceptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-09-10 16:29
 */
public class UserTypeMethodHandler extends AuthorizingAnnotationMethodInterceptor {
    private final Logger logger = LoggerFactory.getLogger(UserTypeMethodHandler.class);

    public UserTypeMethodHandler() {
        super(new UserTypeHandler());
    }

    public UserTypeMethodHandler(AnnotationResolver resolver) {
        super(new UserTypeHandler(), resolver);
    }

    @Override
    public void assertAuthorized(MethodInvocation mi) throws AuthorizationException {
        this.logger.debug("验证权限, {}", mi);
        // 验证权限
        try {
            ((UserTypeHandler) this.getHandler()).assertAuthorized(this.getAnnotation(mi));
        } catch (AuthorizationException ae) {
            if (ae.getCause() == null) {
                ae.initCause(new AuthorizationException("当前的方法没有通过鉴权: " + mi.getMethod()));
            }
            throw ae;
        }
    }
}
