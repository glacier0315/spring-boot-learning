package com.glacier.webscocket;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * date 2022-01-21 16:43
 *
 * @author glacier
 * @version 1.0
 */
@Component
@ServerEndpoint("/websocket/{sid}")
public class WebSocketServer {
	private static final Logger LOGGER = LoggerFactory.getLogger(WebSocketServer.class);
	
	/**
	 * 在线人数
	 */
	private static final AtomicInteger ONLINE_COUNT = new AtomicInteger(0);
	
	/**
	 * 在线客户端
	 */
	private static final Map<String, Session> CLIENTS = new ConcurrentHashMap<>();
	
	/**
	 * 连接建立成功调用的方法
	 */
	@OnOpen
	public void onOpen(Session session, @PathParam("sid") String sid) {
		//在线人数加1
		ONLINE_COUNT.incrementAndGet();
		//将连接信息放入客户端
		CLIENTS.put(sid, session);
		LOGGER.info("新用户{} {}加入，当前在线人数为：{}", sid, session.getId(), ONLINE_COUNT.get());
	}
	
	/**
	 * 连接关闭调用的方法
	 */
	@OnClose
	public void onClose(Session session, @PathParam("sid") String sid) {
		//在线人数减1
		ONLINE_COUNT.decrementAndGet();
		CLIENTS.remove(sid);
		CLIENTS.remove(session.getId());
		LOGGER.info("用户{} {}退出，当前在线人数为：{}", sid, session.getId(), ONLINE_COUNT.get());
	}
	
	/**
	 * 收到客户端消息后调用的方法
	 *
	 * @ Param message 客户端发送过来的消息
	 */
	@OnMessage
	public void onMessage(String message, Session session, @PathParam("sid") String sid) {
		LOGGER.info("服务端收到客户端[{} {}]的消息:{}", sid, session.getId(), message);
		this.sendMessage(message, sid, session);
	}
	
	/**
	 * @ Param session
	 * @ Param error
	 */
	@OnError
	public void onError(Session session, @PathParam("sid") String sid, Throwable error) {
		LOGGER.error("{} {} 发生错误", sid, session.getId(), error);
	}
	
	/**
	 * 群发消息
	 * @param message
	 * @param sid
	 * @param session
	 */
	public void sendMessage(String message, String sid, Session session) {
		//遍历客户端在线人数
		CLIENTS.forEach((id, s) -> {
			if (!id.equals(sid)) {
				LOGGER.info("服务端转发客户端[{} {}]的群发消息给客户端[{}]，内容：{}",
						sid, session.getId(), s.getId(), message);
				s.getAsyncRemote()
						.sendText(message);
			}
		});
	}
}
