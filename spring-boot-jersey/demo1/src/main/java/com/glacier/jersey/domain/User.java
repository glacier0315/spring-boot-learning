package com.glacier.jersey.domain;

import java.io.Serializable;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/13 0013</pre>
 */
public class User implements Serializable {
	private static final long serialVersionUID = -3311756751335792019L;
	private String id;
	private String username;
	private String password;
	private Integer sex;
	
	public User() {
	}
	
	public User(String id, String username, String password, Integer sex) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.sex = sex;
	}

    public static long getSerialVersionUID() {
        return serialVersionUID;
	}
	
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
	
	public Integer getSex() {
		return sex;
	}
	
	public void setSex(Integer sex) {
		this.sex = sex;
	}

    @Override
    public String toString() {
        return "User{" +
				"id='" + id + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", sex=" + sex +
				'}';
    }
}
