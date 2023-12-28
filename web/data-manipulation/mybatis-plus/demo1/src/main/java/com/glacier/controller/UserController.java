package com.glacier.controller;

import com.glacier.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author glacier
 * @version 1.0
 * @description 用户管理
 * @date 2019-08-04 22:13
 */
@RestController
@RequestMapping(value = "users")
public class UserController {
	private final UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping
	public String index() {
		return "users";
	}
}
