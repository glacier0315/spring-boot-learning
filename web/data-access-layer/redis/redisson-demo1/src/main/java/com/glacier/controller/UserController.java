package com.glacier.controller;

import com.glacier.entity.User;
import com.glacier.limiter.RateLimiter;
import com.glacier.service.UserService;
import jakarta.annotation.Resource;
import org.redisson.api.RateIntervalUnit;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * date 2024-01-17 09:24
 *
 * @author glacier
 * @version 1.0
 */
@RestController
@RequestMapping(value = "/user")
public class UserController {
    @Resource
    private UserService userService;

    @RateLimiter(keys = {"userList"}, rate = 2, rateIntervalUnit = RateIntervalUnit.MINUTES)
    @PostMapping(value = "/list")
    public List<User> list(@RequestBody User user) {
        return userService.findList(user);
    }
}
