package com.glacier.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * security配置
 *
 * @author glacier
 * @version 1.0
 * @date 2019-08-04 10:03
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailsService userDetailsService;
	
	/**
	 * 密码工具类
	 *
	 * @return
	 */
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	/**
	 * 授权中心管理器，解决依赖注入问题
	 *
	 * @return
	 * @throws Exception
	 */
	@Bean(BeanIds.AUTHENTICATION_MANAGER)
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService)
				.passwordEncoder(passwordEncoder());
	}
	
	/**
	 * 配置静态资源拦截问题
	 *
	 * @param web
	 * @throws Exception
	 */
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring()
				.antMatchers("/favicon.ico",
						"/error",
						"/static/**",
						"/webjars/**",
						"/css/**",
						"/js/**",
						"/fonts/**");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf(AbstractHttpConfigurer::disable)
				.authorizeRequests(authorizeRequests -> {
					authorizeRequests.anyRequest()
							.authenticated();
				})
				.formLogin(formLogin -> {
					formLogin.loginPage("/login")
							.permitAll();
				})
				.httpBasic();
	}
}
