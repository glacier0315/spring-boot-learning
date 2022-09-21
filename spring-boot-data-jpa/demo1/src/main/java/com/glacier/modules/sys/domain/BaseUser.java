package com.glacier.modules.sys.domain;

import com.glacier.core.domain.IdEntity;

import javax.persistence.*;

/**
 * 基本用户
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Entity
@Table(name = "t_s_base_user")
@Inheritance(strategy = InheritanceType.JOINED)
public class BaseUser extends IdEntity {
	
	/**
	 *
	 */
	private static final long serialVersionUID = -7453820457810766645L;
	
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 真实姓名
	 */
	private String realName;
	/**
	 * 用户验证唯一标示
	 */
	private String userKey;
	/**
	 * 状态
	 */
	private Integer status;
	
	@Column(name = "username", length = 64)
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "password", length = 100)
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "real_name", length = 50)
	public String getRealName() {
		return realName;
	}
	
	public void setRealName(String realName) {
		this.realName = realName;
	}

    @Column(name = "user_key", length = 50)
    public String getUserKey() {
        return userKey;
    }

    public void setUserKey(String userKey) {
        this.userKey = userKey;
    }

    @Column(name = "status", length = 4)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    @Override
    public String toString() {
		return "BaseUser{" +
				"username='" + username + '\'' +
				", password='" + password + '\'' +
				", realName='" + realName + '\'' +
				", userKey='" + userKey + '\'' +
				", status=" + status +
				", id='" + id + '\'' +
                '}';
    }
}
