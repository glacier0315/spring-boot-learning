package com.glacier.common.core.security.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.common.core.constant.CommonConstant;
import com.glacier.common.core.constant.MediaConstants;
import com.glacier.common.core.factory.ResultBuildFactory;
import com.glacier.common.core.security.provider.JwtTokenProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.stream.Collectors;

/**
 * date 2021-07-16 16:24
 *
 * @author glacier
 * @version 1.0
 */
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private final static Logger LOGGER = LoggerFactory.getLogger(CustomAuthenticationSuccessHandler.class);
	private final JwtTokenProvider jwtTokenProvider;
	
	public CustomAuthenticationSuccessHandler(JwtTokenProvider jwtTokenProvider) {
		this.jwtTokenProvider = jwtTokenProvider;
	}
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
										Authentication authentication) throws IOException, ServletException {
		// 创建token
		String token = jwtTokenProvider.createToken(
				authentication.getName(),
				authentication.getAuthorities()
						.stream()
						.map(GrantedAuthority::getAuthority)
						.collect(Collectors.toList()),
				true);
		// 为了跨域，把token放到响应头Authenticate里
		response.setHeader(JwtTokenProvider.TOKEN_HEADER, JwtTokenProvider.TOKEN_PREFIX + token);
		// 写入响应里
		response.setStatus(HttpStatus.OK.value());
		response.setContentType(MediaConstants.APPLICATION_JSON_CHARSET_UTF_8);
		response.setCharacterEncoding(CommonConstant.CHARSET_UTF_8);
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.writeValue(
				response.getWriter(),
				ResultBuildFactory.ok(token));
	}
}
