package com.glacier.common.core.security.domain;

import java.io.Serializable;

/**
 * date 2021-07-15 14:49
 *
 * @author glacier
 * @version 1.0
 */
public class LoginUser implements Serializable {
	private static final long serialVersionUID = -4247215436066228231L;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 登录方式
	 */
	private String loginType;
	/**
	 * 检验码
	 */
	private String validateCode;
	
	public static long getSerialVersionUID() {
		return serialVersionUID;
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
	
	public String getLoginType() {
		return loginType;
	}
	
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	
	public String getValidateCode() {
		return validateCode;
	}
	
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	
	@Override
	public String toString() {
		return "LoginUser{" +
				"username='" + username + '\'' +
				", password='" + password + '\'' +
				", loginType='" + loginType + '\'' +
				", validateCode='" + validateCode + '\'' +
				'}';
	}
}
