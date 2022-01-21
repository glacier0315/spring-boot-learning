package com.glacier.shiro.entity.builder;

import com.glacier.shiro.entity.User;

/**
 * date 2022-01-21 16:13
 *
 * @author glacier
 * @version 1.0
 */
public final class UserBuilder {
	private String id;
	private String username;
	private String nickname;
	private String password;
	
	private UserBuilder() {
	}
	
	public static UserBuilder anUser() {
		return new UserBuilder();
	}
	
	public UserBuilder id(String id) {
		this.id = id;
		return this;
	}
	
	public UserBuilder username(String username) {
		this.username = username;
		return this;
	}
	
	public UserBuilder nickname(String nickname) {
		this.nickname = nickname;
		return this;
	}
	
	public UserBuilder password(String password) {
		this.password = password;
		return this;
	}
	
	public User build() {
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setNickname(nickname);
		user.setPassword(password);
		return user;
	}
}
