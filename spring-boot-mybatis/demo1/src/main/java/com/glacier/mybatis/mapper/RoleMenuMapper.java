package com.glacier.mybatis.mapper;


import com.glacier.mybatis.entity.RoleMenu;

/**
 * 角色菜单关联关系 数据层
 *
 * @author glacier
 * @version 1.0
 * @date 2019-12-18 15:29
 */
public interface RoleMenuMapper {

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
}
