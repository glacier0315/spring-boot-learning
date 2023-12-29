package com.glacier.controller;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    public List<User> index(String username) {
        LOGGER.info("测试web: {}", username);
        return userService.findAll();
    }

    @PostMapping(value = "/page")
    public List<User> page(@RequestBody User user) {
        LOGGER.info("测试web: {}", user);
        return userService.findAll();
    }

    @GetMapping(value = "/{username}")
    public User user(@PathVariable("username") String username) {
        LOGGER.info("查询用户 username: {}", username);
        return userService.findByUsername(username);
    }
}
