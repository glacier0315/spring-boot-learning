package com.glacier.mybatis.service.impl;

import com.glacier.mybatis.entity.RoleMenu;
import com.glacier.mybatis.mapper.RoleMenuMapper;
import com.glacier.mybatis.service.RoleMenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-18 12:48
 */
@Transactional(readOnly = true)
@Service("roleMenuService")
public class RoleMenuServiceImpl implements RoleMenuService {
    public static final Logger LOGGER = LoggerFactory.getLogger(RoleMenuService.class);
    private final RoleMenuMapper roleMenuMapper;

    @Autowired
    public RoleMenuServiceImpl(RoleMenuMapper roleMenuMapper) {
        this.roleMenuMapper = roleMenuMapper;
    }


    @Transactional(rollbackFor = {})
    @Override
    public int deleteByMenuId(String menuId) {
        return roleMenuMapper.deleteByMenuId(menuId);
    }

    @Transactional(rollbackFor = {})
    @Override
    public int deleteByRoleId(String roleId) {
        return roleMenuMapper.deleteByRoleId(roleId);
    }

    @Transactional(rollbackFor = {})
    @Override
    public int insert(RoleMenu record) {
        return roleMenuMapper.insert(record);
    }

    /**
     * 查找所有
     *
     * @return
     */
    @Override
    public List<RoleMenu> findAll() {
        return roleMenuMapper.findAll();
    }
}
