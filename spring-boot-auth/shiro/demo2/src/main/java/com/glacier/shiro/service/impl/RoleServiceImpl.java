package com.glacier.shiro.service.impl;

import com.glacier.shiro.entity.Role;
import com.glacier.shiro.service.RoleService;
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
public class RoleServiceImpl implements RoleService {
    /**
     * 根据用户名查找角色
     *
     * @param username
     * @return
     */
    @Override
    public List<Role> findByUsername(String username) {
        return new ArrayList<>();
    }
}
