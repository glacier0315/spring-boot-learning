package com.glacier.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

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
}
