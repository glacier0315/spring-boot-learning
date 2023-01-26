package com.glacier.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;

/**
 * security配置
 *
 * @author glacier
 * @version 1.0
 * @date 2019-08-04 10:03
 */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity(securedEnabled = true, jsr250Enabled = true)
public class WebSecurityConfig {

	/**
	 * 获取AuthenticationManager（认证管理器），登录时认证使用
	 *
	 * @param authenticationConfiguration
	 * @return
	 * @throws Exception
	 */
	@Bean
	public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
		return authenticationConfiguration.getAuthenticationManager();
	}

	@Bean
	SecurityFilterChain web(HttpSecurity http) throws Exception {
		http
				.csrf(AbstractHttpConfigurer::disable)
				.authorizeHttpRequests((authorize) ->
						authorize.mvcMatchers("/favicon.ico",
										"/error",
										"/static/**",
										"/webjars/**",
										"/css/**",
										"/js/**",
										"/fonts/**"
								)
								.permitAll()
								.anyRequest()
								.permitAll()
				);

		return http.build();
	}
}
