package com.glacier.openapi.controller;

import com.glacier.openapi.entity.User;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2021-04-20 16:45
 */
@Tag(name = "用户管理")
@RestController
@RequestMapping("user")
public class UserController {

    @Operation(summary = "列表")
    @GetMapping("")
    public List<User> findAll() {
        List<User> list = new ArrayList<>();
        User user;
        for (int i = 0; i < 10; i++) {
            user = new User();
            user.setId(String.valueOf(i));
            list.add(user);
        }
        return list;
    }

    @Operation(summary = "查询")
    @GetMapping("query")
    public User query(@Parameter(name = "name", description = "名称") String name) {
        User user = new User();
        user.setName(name);
        return user;
    }

    @Operation(summary = "新增")
    @PostMapping("add")
    public User add(User User) {
        return new User();
    }

    @Operation(summary = "修改")
    @PostMapping("update")
    public User update(User User) {
        return new User();
    }

    @Operation(summary = "删除")
    @PostMapping("delete")
    public Boolean delete(Integer id) {
        return true;
    }
}
