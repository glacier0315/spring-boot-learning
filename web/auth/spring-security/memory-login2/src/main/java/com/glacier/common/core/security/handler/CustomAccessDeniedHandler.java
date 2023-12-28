package com.glacier.common.core.security.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.common.core.constant.CommonConstant;
import com.glacier.common.core.constant.MediaConstants;
import com.glacier.common.core.factory.ResultBuildFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author glacier
 * @version 1.0
 * date 2020-07-24 16:38
 */
public class CustomAccessDeniedHandler implements AccessDeniedHandler {
	private static final Logger log = LoggerFactory.getLogger(CustomAccessDeniedHandler.class);
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
					   AccessDeniedException accessDeniedException) throws IOException, ServletException {
		log.error("异常：", accessDeniedException);
		response.setStatus(HttpStatus.OK.value());
		response.setContentType(MediaConstants.APPLICATION_JSON_CHARSET_UTF_8);
		response.setCharacterEncoding(CommonConstant.CHARSET_UTF_8);
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.writeValue(
				response.getOutputStream(),
				ResultBuildFactory.error("040030", "拒绝访问"));
	}
}
