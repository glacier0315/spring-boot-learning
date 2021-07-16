package com.glacier.common.core.security.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.common.core.constant.CommonConstant;
import com.glacier.common.core.constant.MediaConstants;
import com.glacier.common.core.factory.ResultBuildFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 自定义授权异常类
 *
 * @author glacier
 * @version 1.0
 * date 2020-05-22 17:11
 */
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {
    private static final Logger log = LoggerFactory.getLogger(CustomAuthenticationEntryPoint.class);
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
                         AuthenticationException authException) throws IOException, ServletException {
        log.error("异常：", authException);
        response.setStatus(HttpStatus.OK.value());
        response.setContentType(MediaConstants.APPLICATION_JSON_CHARSET_UTF_8);
        response.setCharacterEncoding(CommonConstant.CHARSET_UTF_8);
        ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.writeValue(
				response.getOutputStream(),
				ResultBuildFactory.error("500", authException.getMessage()));
    }
}
