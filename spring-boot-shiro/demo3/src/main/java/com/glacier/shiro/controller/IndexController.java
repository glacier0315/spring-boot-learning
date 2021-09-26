package com.glacier.shiro.controller;

import com.glacier.shiro.authc.CustomToken;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * date 2021-04-26 20:42
 *
 * @author glacier
 * @version 1.0
 */
@Controller
public class IndexController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * 登录页面
	 *
	 * @return
	 */
	@GetMapping("/login")
	public String login() {
		if (SecurityUtils.getSubject()
				.isAuthenticated()) {
			return "redirect:/";
		}
		return "login";
	}
	
	/**
	 * 登录页面
	 *
	 * @param username
	 * @param password
	 * @param model
	 * @return
	 */
	@PostMapping("login")
	public String login(String username, String password, String loginType, Model model) {
		CustomToken token = new CustomToken(username, password, false, null, loginType);
		try {
			SecurityUtils.getSubject()
					.login(token);
			return "redirect:/";
		} catch (AuthenticationException e) {
			LOGGER.error("登录验证错误！", e);
			model.addAttribute("error", "用户名或者密码错误！");
		}
		return "/login";
	}
	
	/**
	 * 登录后可访问
	 *
	 * @return
	 */
	@GetMapping("")
	public String index() {
		return "index";
	}
	
	/**
	 * 退出登录
	 */
	@GetMapping("logout")
	public String logout() {
		SecurityUtils.getSubject()
				.logout();
		return "redirect: /login";
	}
	
	/**
	 * 登录页面
	 *
	 * @return
	 */
	@GetMapping("/403")
	public String page403() {
		return "error/403";
	}
}
