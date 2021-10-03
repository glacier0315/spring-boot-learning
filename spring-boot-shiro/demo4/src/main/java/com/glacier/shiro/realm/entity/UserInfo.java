package com.glacier.shiro.realm.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * date 2021-04-27 09:36
 *
 * @author glacier
 * @version 1.0
 */
public class UserInfo implements Serializable {
	private String id;
	private String username;
	private String nickname;
	private String password;
	private Set<String> roles;
	private Set<String> permissions;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Set<String> getRoles() {
		return roles;
	}
	
	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}
	
	public Set<String> getPermissions() {
		return permissions;
	}
	
	public void setPermissions(Set<String> permissions) {
		this.permissions = permissions;
	}
	
	@Override
	public String toString() {
		return "UserInfo{" +
				"id='" + id + '\'' +
				", username='" + username + '\'' +
				", nickname='" + nickname + '\'' +
				", password='" + password + '\'' +
				", roles=" + roles +
				", permissions=" + permissions +
				'}';
	}
}
