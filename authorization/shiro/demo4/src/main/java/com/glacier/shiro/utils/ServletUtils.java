package com.glacier.shiro.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.servlet.http.HttpServletRequest;
import java.util.Optional;

/**
 * date 2021-10-03 17:44
 *
 * @author glacier
 * @version 1.0
 */
public class ServletUtils {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ServletUtils.class);
	
	private ServletUtils() {
	}
	
	
	/**
	 * 获取当前请求对象
	 *
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		return Optional.ofNullable(RequestContextHolder.getRequestAttributes())
				.map(requestAttributes -> ((ServletRequestAttributes)requestAttributes).getRequest())
				.orElse(null);
	}
	
	public static String getRequestPath(HttpServletRequest request) {
		if (request == null) {
			return null;
		}
		// 获取url
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		if (contextPath == null || uri == null) {
			return null;
		}
		return uri.replaceFirst(contextPath, "");
	}
}
