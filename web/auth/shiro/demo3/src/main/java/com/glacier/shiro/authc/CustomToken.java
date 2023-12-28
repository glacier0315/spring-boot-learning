package com.glacier.shiro.authc;

/**
 * date 2021-09-26 12:13
 *
 * @author glacier
 * @version 1.0
 */
public class CustomToken extends org.apache.shiro.authc.UsernamePasswordToken {
	/**
	 * 登录类型
	 */
	private String loginType;
	
	public CustomToken(String username, String password, boolean rememberMe, String host, String loginType) {
		super(username, password, rememberMe, host);
		this.loginType = loginType;
	}
	
	public String getLoginType() {
		return loginType;
	}
	
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
}
