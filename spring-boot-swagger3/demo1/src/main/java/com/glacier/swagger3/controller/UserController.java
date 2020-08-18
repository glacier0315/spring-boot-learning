package com.glacier.swagger3.controller;

import com.glacier.swagger3.entity.form.UserQuery;
import com.glacier.swagger3.entity.pojo.User;
import com.glacier.swagger3.entity.vo.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-11 10:44
 */
@Api(tags = "用户信息管理")
@RestController
public class UserController {

    /**
     * 查询用户
     *
     * @param userQuery
     * @return
     */
    @ApiOperation("查询用户")
    @GetMapping
    public Result<User> index(UserQuery userQuery) {
        User user = new User();
        user.setUsername("admin");
        user.setSex(1);
        return Result.ok(user);
    }
}
