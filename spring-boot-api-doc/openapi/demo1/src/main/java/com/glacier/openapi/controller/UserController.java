package com.glacier.openapi.controller;

import com.glacier.openapi.entity.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 16:45
 */
@RestController
@RequestMapping("user")
public class UserController {

    @GetMapping("")
    public List<User> findAll(){
        List<User> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add(new User(String.valueOf(i)));
        }
        return list;
    }
}
