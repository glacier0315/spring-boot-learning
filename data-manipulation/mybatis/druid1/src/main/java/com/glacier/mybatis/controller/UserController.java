package com.glacier.mybatis.controller;

import com.glacier.mybatis.entity.User;
import com.glacier.mybatis.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * date 2022-01-27 14:59
 *
 * @author glacier
 * @version 1.0
 */
@Controller
public class UserController {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	private final UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 查询所有
	 *
	 * @return 所有实例
	 */
	@GetMapping("")
	public List<User> selectAll() {
		return userService.selectAll();
	}
}
