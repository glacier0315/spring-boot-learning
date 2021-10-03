package com.glacier.shiro.authc;

import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.springframework.core.annotation.AnnotationUtils;

import java.lang.reflect.Method;

/**
 * 启动自定义注解
 *
 * @author glacier
 * @version 1.0
 * @date 2020-09-10 15:18
 */
public class ShiroAdvisor extends AuthorizationAttributeSourceAdvisor {

    private static final long serialVersionUID = -1434573255747844198L;

    public ShiroAdvisor() {
        // 这里可以添加多个
        this.setAdvice(new AuthAopInterceptor());
    }

    @SuppressWarnings({"unchecked"})
    @Override
    public boolean matches(Method method, Class targetClass) {
        Method m = method;
		try {
			m = targetClass.getMethod(m.getName(), m.getParameterTypes());
			return this.isFrameAnnotation(m);
		} catch (NoSuchMethodException ignored) {

		}
		return super.matches(method, targetClass);
    }

    private boolean isFrameAnnotation(Method method) {
        return null != AnnotationUtils.findAnnotation(method, UserTypePermission.class);
    }
}
