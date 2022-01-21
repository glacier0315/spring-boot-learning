package com.glacier.shiro.service;

import com.glacier.shiro.entity.Role;

import java.util.List;

/**
 * date 2021-04-27 09:18
 *
 * @author glacier
 * @version 1.0
 */
public interface RoleService {
    
    /**
     * 根据用户名查找角色
     * @param username
     * @return
     */
    List<Role> findByUsername(String username);
}
