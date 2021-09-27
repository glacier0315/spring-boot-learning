package com.glacier.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

/**
 * date 2021-09-27 15:31
 *
 * @author glacier
 * @version 1.0
 */
public class User implements Serializable {
	private static final long serialVersionUID = -6393419640047339141L;
	private String id;
	private String username;
	private String password;
	private List<String> roles;
	private List<String> permissions;
	private LocalDate birthday;
	
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
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public List<String> getRoles() {
		return roles;
	}
	
	public void setRoles(List<String> roles) {
		this.roles = roles;
	}
	
	public List<String> getPermissions() {
		return permissions;
	}
	
	public void setPermissions(List<String> permissions) {
		this.permissions = permissions;
	}
	
	public LocalDate getBirthday() {
		return birthday;
	}
	
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "User{" +
				"id='" + id + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", roles=" + roles +
				", permissions=" + permissions +
				", birthday=" + birthday +
				'}';
	}
}
