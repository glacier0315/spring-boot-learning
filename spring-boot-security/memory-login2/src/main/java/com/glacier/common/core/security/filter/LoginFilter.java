package com.glacier.common.core.security.filter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.http.HttpServletRequest;

/**
 * date 2021-07-16 16:06
 *
 * @author glacier
 * @version 1.0
 */
public class LoginFilter extends UsernamePasswordAuthenticationFilter {
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginFilter.class);
	
	
	/**
	 * 获取密码
	 *
	 * @param request
	 * @return
	 */
	@Override
	protected String obtainPassword(HttpServletRequest request) {
		if (isJsonRequest(request)) {
			// TODO: 2021/7/16 读取密码 
		}
		return super.obtainPassword(request);
	}
	
	/**
	 * 获取用户名
	 *
	 * @param request
	 * @return
	 */
	@Override
	protected String obtainUsername(HttpServletRequest request) {
		if (isJsonRequest(request)) {
			// TODO: 2021/7/16 读取用户名 
		}
		return super.obtainUsername(request);
	}
	
	/**
	 * 判断是json请求
	 *
	 * @param request
	 * @return
	 */
	private boolean isJsonRequest(HttpServletRequest request) {
		return MediaType.APPLICATION_JSON_VALUE.equals(request.getContentType());
	}
}
