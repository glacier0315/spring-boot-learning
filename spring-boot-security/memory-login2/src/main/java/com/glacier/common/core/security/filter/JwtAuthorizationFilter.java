package com.glacier.common.core.security.filter;

import com.glacier.common.core.security.provider.JwtTokenProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * date 2021-07-15 10:10
 *
 * @author glacier
 * @version 1.0
 */
public class JwtAuthorizationFilter extends OncePerRequestFilter {
	private final static Logger LOGGER = LoggerFactory.getLogger(JwtAuthorizationFilter.class);
	public static final String AUTHENTICATION_SCHEME_BEARER = "Bearer ";
	private final JwtTokenProvider jwtTokenProvider;
	
	public JwtAuthorizationFilter(JwtTokenProvider jwtTokenProvider) {
		this.jwtTokenProvider = jwtTokenProvider;
	}
	
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
									FilterChain filterChain) throws ServletException, IOException {
		String header = request.getHeader(HttpHeaders.AUTHORIZATION);
		if (header == null || !StringUtils.startsWithIgnoreCase(header.trim(), AUTHENTICATION_SCHEME_BEARER)) {
			filterChain.doFilter(request, response);
			return;
		}
		header = header.trim();
		if (header.equalsIgnoreCase(AUTHENTICATION_SCHEME_BEARER)) {
			throw new BadCredentialsException("令牌为空！");
		}
		String token = header.substring(AUTHENTICATION_SCHEME_BEARER.length()).trim();
		UsernamePasswordAuthenticationToken authenticationToken = verefyToken(token);
		if (authenticationToken == null) {
			throw new BadCredentialsException("无效令牌！");
		}
		LOGGER.info("token令牌验证成功, {}", authenticationToken);
		SecurityContextHolder.getContext().setAuthentication(authenticationToken);
		filterChain.doFilter(request, response);
	}
	
	/**
	 * 验证token，并生成认证后的token
	 *
	 * @param token
	 * @return
	 */
	private UsernamePasswordAuthenticationToken verefyToken(String token) {
		if (token == null) {
			return null;
		}
		
		// 认证失败，返回null
		if (!jwtTokenProvider.verifyToken(token)) {
			return null;
		}
		// 提取用户名
		// 定义权限列表
		// 构建认证过的token
		return new UsernamePasswordAuthenticationToken(
				jwtTokenProvider.getUsername(token),
				null,
				jwtTokenProvider.getRoles(token)
						.stream()
						.map(SimpleGrantedAuthority::new)
						.collect(Collectors.toList()));
	}
}
