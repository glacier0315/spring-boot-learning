package com.glacier.mybatis.service;

import com.glacier.mybatis.entity.RoleMenu;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-18 12:48
 */
public interface RoleMenuService {

    /**
     * 删除 角色菜单关联关系
     *
     * @param menuId 菜单id
     * @return
     */
    int deleteByMenuId(String menuId);

    /**
     * 删除 角色菜单关联关系
     *
     * @param roleId 角色id
     * @return
     */
    int deleteByRoleId(String roleId);

    /**
     * 保存角色菜单关联关系
     *
     * @param record
     * @return
     */
    int insert(RoleMenu record);

    /**
     * 查找所有
     * @return
     */
    List<RoleMenu> findAll();
}
