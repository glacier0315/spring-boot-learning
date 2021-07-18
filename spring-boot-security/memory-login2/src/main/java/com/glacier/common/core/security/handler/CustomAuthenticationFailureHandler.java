package com.glacier.common.core.security.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.common.core.constant.CommonConstant;
import com.glacier.common.core.constant.MediaConstants;
import com.glacier.common.core.factory.ResultBuildFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * date 2021-07-18 11:40
 *
 * @author glacier
 * @version 1.0
 */
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler {
	private static final Logger LOGGER = LoggerFactory.getLogger(CustomAuthenticationFailureHandler.class);
	/**
	 * Called when an authentication attempt fails.
	 *
	 * @param request   the request during which the authentication attempt occurred.
	 * @param response  the response.
	 * @param exception the exception which was thrown to reject the authentication
	 */
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
										AuthenticationException exception) throws IOException, ServletException {
		LOGGER.error("异常：", exception);
		response.setStatus(HttpStatus.OK.value());
		response.setContentType(MediaConstants.APPLICATION_JSON_CHARSET_UTF_8);
		response.setCharacterEncoding(CommonConstant.CHARSET_UTF_8);
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.writeValue(
				response.getOutputStream(),
				ResultBuildFactory.error("500", exception.getMessage()));
	}
}
