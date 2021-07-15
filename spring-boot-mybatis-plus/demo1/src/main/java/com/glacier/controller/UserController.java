package com.glacier.controller;

import com.glacier.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author glacier
 * @version 1.0
 * @description 用户管理
 * @date 2019-08-04 22:13
 */
@RestController
@RequestMapping(value = "users")
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping
    public String index() {
        return "users";
    }
}
