package com.galcier.controller;

import com.galcier.domain.User;
import com.galcier.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2023-12-16 10:45
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class UserController {

    @Resource
    private UserService userService;

    @PostMapping("/register")
    public String register(@RequestBody User user) {
        return userService.register(user);
    }

    @PostMapping("/login")
    public String login(@RequestBody User user) {
        return userService.login(user);
    }

    @PostMapping("/logout")
    public String logout(String username) {
        return userService.logout(username);
    }
}
