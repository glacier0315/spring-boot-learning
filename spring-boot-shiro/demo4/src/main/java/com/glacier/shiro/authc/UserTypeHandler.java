package com.glacier.shiro.authc;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.aop.AuthorizingAnnotationHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.annotation.Annotation;

/**
 * 权限注解 用于检查权限 规定访问权限
 *
 * @author glacier
 * @version 1.0
 * @date 2020-09-10 15:18
 */
public class UserTypeHandler extends AuthorizingAnnotationHandler {

    private final Logger logger = LoggerFactory.getLogger(UserTypeHandler.class);

    public UserTypeHandler() {
        //写入注解
        super(UserTypePermission.class);
    }

    @Override
    public void assertAuthorized(Annotation a) throws AuthorizationException {
        if (logger.isDebugEnabled()) {
            this.logger.debug("检查权限, {}", a);
        }
        if (a instanceof UserTypePermission) {
            UserTypePermission annotation = (UserTypePermission) a;
            //1.获取当前用户类型
            String[] userTypes = annotation.userTypes();
			SecurityUtils.getSubject()
					.checkPermissions(userTypes);
        }
    }
}
