package com.glacier.controller;

import com.glacier.domain.User;
import com.glacier.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
@RestController
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping(value = "/user")
    public List<User> index() {
        log.info("测试web");
        return userService.findAll();
    }

    @GetMapping(value = "/user/{username}")
    public User user(@PathVariable("username") String username) {
        log.info("查询用户 username: {}", username);
        return userService.findByUsername(username);
    }
}
