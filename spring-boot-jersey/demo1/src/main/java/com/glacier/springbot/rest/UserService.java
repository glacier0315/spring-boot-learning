package com.glacier.springbot.rest;

import com.glacier.springbot.domain.Result;
import com.glacier.springbot.domain.User;

import javax.inject.Singleton;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/13 0013</pre>
 */
@Singleton
@Path("/user")
@Produces(MediaType.APPLICATION_JSON)
public class UserService {

    /**
     * 查询user 列表
     *
     * @return 用户集合
     */
    @GET
    public List<User> list() {
        List<User> users = new ArrayList<>();
        User user = new User("123", "xm", "123456", 1);
        users.add(user);
        return users;
    }

    /**
     * 根据id 查询用户
     *
     * @param id 查询id
     * @return 用户实体
     */
    @GET
    @Path("/{id}")
    public User find(@PathParam("id") String id) {
        User user = new User(id, "xm", "123456", 1);
        return user;
    }

    /**
     * 保存用户
     *
     * @param user 用户实体
     * @return 保存响应
     */
    @PUT
    public Result save(User user) {
        user.setId("123");
        return new Result(200, "保存成功！", user);
    }

    /**
     * 更新用户
     *
     * @param user 用户实体
     * @return 更新响应
     */
    @POST
    public Result update(User user) {
        user.setId("1234");
        return new Result(200, "修改成功！", user);
    }
}
