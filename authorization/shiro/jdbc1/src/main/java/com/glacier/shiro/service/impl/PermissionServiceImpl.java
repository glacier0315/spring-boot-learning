package com.glacier.shiro.service.impl;

import com.glacier.shiro.entity.Permission;
import com.glacier.shiro.service.PermissionService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * date 2021-04-27 21:34
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class PermissionServiceImpl implements PermissionService {
    /**
     * 根据用户名查找角色
     *
     * @param username
     * @return
     */
    @Override
    public List<Permission> findByUsername(String username) {
        return new ArrayList<>();
    }
}
