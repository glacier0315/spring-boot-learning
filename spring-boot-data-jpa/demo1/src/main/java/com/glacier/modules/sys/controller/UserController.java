package com.glacier.modules.sys.controller;

import com.glacier.core.domain.Result;
import com.glacier.modules.sys.domain.User;
import com.glacier.modules.sys.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 用户管理
 *
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@RestController
@RequestMapping("user")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    /**
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<User> getUsers() {
        logger.info("获取所有用户！");
        return this.userService.findAll();
    }

    /**
     * @param user
     * @return
     */
    @RequestMapping(method = RequestMethod.POST)
    public Result create(User user) {
        logger.info("添加用户", user);
        this.userService.saveOrUpdate(user);
        return Result.ok("添加用户成功！", user);
    }

    /**
     * @param user
     * @return
     */
    @RequestMapping(method = RequestMethod.PUT)
    public Result update(User user) {
        logger.info("更新用户", user);
        this.userService.saveOrUpdate(user);
        return Result.ok("更新用户成功！", user);
    }

    /**
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Result findOne(@PathVariable String id) {
        logger.info("获取id为" + id + "用户！");
        User user = this.userService.findOne(id);
        return Result.ok("获取用户成功！", user);
    }

    /**
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public Result delete(@PathVariable String id) {
        logger.info("输出id为：" + id + " 的用户！");
        this.userService.deleteById(id);
        return Result.ok("删除用户成功！", null);
    }


}
