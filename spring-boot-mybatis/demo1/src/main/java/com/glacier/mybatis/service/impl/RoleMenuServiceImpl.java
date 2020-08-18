package com.glacier.mybatis.service.impl;

import com.glacier.mybatis.entity.RoleMenu;
import com.glacier.mybatis.mapper.RoleMenuMapper;
import com.glacier.mybatis.service.RoleMenuService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-18 12:48
 */
@Slf4j
@Transactional(readOnly = true)
@Service("roleMenuService")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class RoleMenuServiceImpl implements RoleMenuService {

    private final RoleMenuMapper roleMenuMapper;

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
}
