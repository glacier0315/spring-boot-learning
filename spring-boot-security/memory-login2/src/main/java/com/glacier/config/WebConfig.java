package com.glacier.config;

import com.glacier.common.core.security.filter.JwtAuthorizationFilter;
import com.glacier.common.core.security.handler.CustomAccessDeniedHandler;
import com.glacier.common.core.security.handler.CustomAuthenticationEntryPoint;
import com.glacier.common.core.security.handler.CustomAuthenticationSuccessHandler;
import com.glacier.common.core.security.properties.JwtProperties;
import com.glacier.common.core.security.provider.JwtTokenProvider;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;

/**
 * date 2021-07-16 11:36
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class WebConfig {
	/**
	 * 消息国际化绑定
	 * 将spring-secruity-core-***jar的org.springframework.security路径下的messages_zh_CN.properties复制到项目的/resources下,并注入Bean
	 *
	 * @return
	 */
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource source = new ReloadableResourceBundleMessageSource();
		source.setBasename("classpath:org/springframework/security/messages_zh_CN");
		return source;
	}
	
	/**
	 * @return
	 */
	@Bean
	@ConditionalOnMissingBean
	@ConfigurationProperties(prefix = "settings.jwt")
	JwtProperties JwtProperties() {
		return new JwtProperties();
	}
	
	/**
	 * 登录成功处理器
	 *
	 * @param jwtTokenProvider
	 * @return
	 */
	@Bean
	CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler(JwtTokenProvider jwtTokenProvider) {
		return new CustomAuthenticationSuccessHandler(jwtTokenProvider);
	}
	
	/**
	 * 令牌过滤器
	 *
	 * @param jwtTokenProvider
	 * @return
	 */
	@Bean
	JwtAuthorizationFilter jwtAuthorizationFilter(JwtTokenProvider jwtTokenProvider) {
		return new JwtAuthorizationFilter(jwtTokenProvider);
	}
	
	/**
	 * 自定义权限不足异常
	 *
	 * @return 自定义权限不足异常处理类
	 */
	@Bean
	AccessDeniedHandler accessDeniedHandler() {
		return new CustomAccessDeniedHandler();
	}
	
	/**
	 * 自定义需要授权异常
	 *
	 * @return 自定义需要授权异常处理类
	 */
	@Bean
	AuthenticationEntryPoint authenticationEntryPoint() {
		return new CustomAuthenticationEntryPoint();
	}
}
