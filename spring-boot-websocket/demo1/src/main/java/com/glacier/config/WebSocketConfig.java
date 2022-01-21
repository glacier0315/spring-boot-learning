package com.glacier.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
 * date 2022-01-21 16:41
 * 开启WebSocket支持
 * @author glacier
 * @version 1.0
 */
@Configuration
public class WebSocketConfig {
	
	/**
	 * 用途：扫描并注册所有携带@ServerEndpoint注解的实例。 @ServerEndpoint("/websocket")
	 * PS：如果使用外部容器 则无需提供ServerEndpointExporter。
	 */
	@Bean
	public ServerEndpointExporter serverEndpointExporter() {
		return new ServerEndpointExporter();
	}
}
