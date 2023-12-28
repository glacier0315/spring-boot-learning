package com.glacier.mybatis.service;

import com.glacier.mybatis.entity.User;

import java.util.List;

/**
 * date 2022-01-21 08:08
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {
    /**
     * 新增用户
     * @param user
     * @return
     */
    int add(User user);

    /**
     *  更新用户
     * @param user
     * @return
     */
    int update(User user);

    /**
     * 删除用户
     * @param id
     * @return
     */
    int delete(String id);
    /**
     * 查询所有
     *
     * @return 所有实例
     */
    List<User> selectAll();
}
