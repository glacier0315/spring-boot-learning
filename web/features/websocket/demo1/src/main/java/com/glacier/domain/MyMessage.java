package com.glacier.domain;

import java.io.Serializable;

/**
 * date 2022-01-21 17:03
 *
 * @author glacier
 * @version 1.0
 */
public class MyMessage implements Serializable {
	private static final long serialVersionUID = -6238797442547267205L;
	private String userId;
	private String message;
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "MyMessage{" +
				"userId='" + userId + '\'' +
				", message='" + message + '\'' +
				'}';
	}
}
