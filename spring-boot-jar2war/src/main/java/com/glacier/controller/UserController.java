package com.glacier.controller;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

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
	
	@GetMapping(value = "")
    public List<User> index(Model model) {
        LOGGER.info("测试web");
        return userService.findAll();
    }


}
