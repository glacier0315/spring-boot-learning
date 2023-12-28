package com.glacier.shiro.authc.session;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;

import java.io.Serializable;

/**
 * date 2021-10-04 13:09
 *
 * @author glacier
 * @version 1.0
 */
public class RedisCachingSessionDAO extends CachingSessionDAO {
	
	public RedisCachingSessionDAO() {
	}
	
	@Override
	protected void doUpdate(Session session) {
	
	}
	
	@Override
	protected void doDelete(Session session) {
	
	}
	
	@Override
	protected Serializable doCreate(Session session) {
		Serializable sessionId = generateSessionId(session);
		assignSessionId(session, sessionId);
		return sessionId;
	}
	
	@Override
	protected Session doReadSession(Serializable sessionId) {
		return null;
	}
}
