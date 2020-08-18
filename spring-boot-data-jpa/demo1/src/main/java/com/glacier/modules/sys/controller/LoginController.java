package com.glacier.modules.sys.controller;

import com.glacier.core.domain.Result;
import com.glacier.modules.sys.domain.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * 登陆管理
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Slf4j
@RestController
public class LoginController {


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Result<User> login(User user) {
        log.info("{} 登陆", user);
        return Result.ok("登录成功！", user);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public Result<String> logout() {
        log.info("退出登录！");
        return Result.ok("退出登陆成功！", null);
    }
}
