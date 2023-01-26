package com.glacier.controller;

import com.glacier.domain.Result;
import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.hibernate.validator.constraints.Length;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotEmpty;

/**
 * date 2022-01-18 16:06
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping("/user")
public class UserController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	
	private final UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 新增用户
	 *
	 * @param user
	 */
	@PostMapping("save")
	public Result<String> save(@Valid User user) {
		LOGGER.info("新增用户 {}", user);
		userService.save(user);
		return Result.ok("操作成功！");
	}
	
	/**
	 * @param username
	 * @return
	 */
	@GetMapping(value = "findByUsername")
	public Result<User> findByUsername(
			@Length(min = 5, max = 20, message = "username超出范围")
			@NotEmpty(message = "username不能为空") String username) {
		LOGGER.info("查询用户 username: {}", username);
		return Result.ok("操作成功!", userService.findByUsername(username));
	}
}
