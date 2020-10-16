package com.glacier.easyexcel.controller;

import com.glacier.easyexcel.domain.User;
import com.glacier.easyexcel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:04
 */
@RestController
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("findAll")
    public List<User> findAll() {
        return this.userService.findAll();
    }

    @PostMapping("findList")
    public List<User> findList(User user) {
        return this.userService.findList(user);
    }

    @GetMapping("export")
    public void export(User user, HttpServletResponse response) {
        this.userService.export(user, response);
    }
}
