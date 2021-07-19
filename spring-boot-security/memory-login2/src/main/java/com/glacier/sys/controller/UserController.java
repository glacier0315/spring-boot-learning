package com.glacier.sys.controller;

import com.glacier.sys.domain.User;
import com.glacier.sys.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@RestController
@RequestMapping("/user")
public class UserController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	@GetMapping("")
	public List<User> index() {
		return userService.findList(User.UserBuilder
				.anUser()
				.username("admin")
				.build());
	}
	
	@PreAuthorize("hasAuthority('nginx')")
	@GetMapping("list")
	public List<User> list() {
		return userService.findList(User.UserBuilder
				.anUser()
				.username("admin")
				.build());
	}
}
