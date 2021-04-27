package com.glacier.shiro.service;

import com.glacier.shiro.entity.Permission;

import java.util.List;

/**
 * date 2021-04-27 21:25
 *
 * @author glacier
 * @version 1.0
 */
public interface PermissionService {
    /**
     * 根据用户名查找角色
     *
     * @param username
     * @return
     */
    List<Permission> findByUsername(String username);
}
