package com.glacier.config;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.apache.tomcat.websocket.server.WsSci;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.embedded.tomcat.TomcatContextCustomizer;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2022-01-20 17:32
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class HttpConfiguration {
	private static final Logger LOGGER = LoggerFactory.getLogger(HttpConfiguration.class);
	/**
	 *
	 */
	@Value("${server.port}")
	private int port;
	/**
	 * 获取配置端口
	 */
	@Value("${server.http.port}")
	private Integer httpPort;
	
	
	@Bean
	public ServletWebServerFactory servletContainer() {
		TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory() {
					@Override
					protected void postProcessContext(Context context) {
						SecurityConstraint securityConstraint = new SecurityConstraint();
						securityConstraint.setUserConstraint("CONFIDENTIAL");
						SecurityCollection collection = new SecurityCollection();
						collection.addPattern("/*");
						securityConstraint.addCollection(collection);
						context.addConstraint(securityConstraint);
					}
				};
		// 添加http
		tomcat.addAdditionalTomcatConnectors(initiateHttpConnector());
		return tomcat;
	}
	
	/**
	 * 配置http
	 *
	 * @return connector
	 */
	private Connector initiateHttpConnector() {
		Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
		connector.setScheme("http");
		connector.setPort(httpPort);
		connector.setSecure(false);
		connector.setRedirectPort(port);
		return connector;
	}
	
	/**
	 * The following code is required only if you WebSocket endpoint
	 * in your application. We added it for some later example. You
	 * can omit this part if you don't have any WebSocket endpoint.
	 */
	@Bean
	public TomcatContextCustomizer tomcatContextCustomizer() {
		LOGGER.info("TOMCAT CONTEXT CUSTOMIZER INITIALIZED");
		return context -> context.addServletContainerInitializer(new WsSci(), null);
	}
}
