package com.glacier.entity.builder;

import com.glacier.entity.User;

import java.time.LocalDate;
import java.util.List;

/**
 * date 2021-09-27 17:10
 *
 * @author glacier
 * @version 1.0
 */
public final class UserBuilder {
	private String id;
	private String username;
	private String password;
	private List<String> roles;
	private List<String> permissions;
	private LocalDate birthday;
	
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
	
	public UserBuilder password(String password) {
		this.password = password;
		return this;
	}
	
	public UserBuilder roles(List<String> roles) {
		this.roles = roles;
		return this;
	}
	
	public UserBuilder permissions(List<String> permissions) {
		this.permissions = permissions;
		return this;
	}
	
	public UserBuilder birthday(LocalDate birthday) {
		this.birthday = birthday;
		return this;
	}
	
	public User build() {
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		user.setRoles(roles);
		user.setPermissions(permissions);
		user.setBirthday(birthday);
		return user;
	}
}
