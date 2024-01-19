package com.glacier.controller;

import com.glacier.aop.Log;
import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * date 2022-01-18 16:06
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	private final UserService userService;

	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}

	@Log("查询用户")
	@GetMapping(value = "/user")
    public List<User> index() {
        LOGGER.info("测试web");
        return userService.findAll();
    }

	@Log("查询用户")
	@GetMapping(value = "/user/{username}")
	public User findByUsername(@PathVariable("username") String username, String sex) {
		LOGGER.info("查询用户 username: {}", username);
		return userService.findByUsername(username);
	}
}
