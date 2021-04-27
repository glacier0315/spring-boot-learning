package com.glacier.shiro.mapper;

import com.glacier.shiro.entity.User;

import java.util.List;
import java.util.Optional;

/**
 * date 2021-04-27 20:24
 *
 * @author glacier
 * @version 1.0
 */
public interface UserMapper {
    
    /**
     * 根据用户名查找
     * @param username
     * @return
     */
    Optional<User> findByUsername(String username);
    
    /**
     * 查找全部
     * @return
     */
    List<User> findAll();
    
    /**
     * 根据id 删除
     * @param id
     * @return
     */
    int deleteById(String id);
    
    /**
     * 插入数据
     * @param user
     * @return
     */
    int insert(User user);
}
