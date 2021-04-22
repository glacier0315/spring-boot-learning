package com.glacier.mybatis.entity;

import java.io.Serializable;

/**
 * 角色菜单关联模型
 *
 * @author glacier
 * @version 1.0
 * @date 2019-10-09 14:49
 */
public class RoleMenu implements Serializable {

    private static final long serialVersionUID = -234428421997899712L;
    /**
     * 角色id
     */
    private String roleId;
    /**
     * 菜单id
     */
    private String menuId;

    public RoleMenu() {
    }

    public RoleMenu(String roleId, String menuId) {
        this.roleId = roleId;
        this.menuId = menuId;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    @Override
    public String toString() {
        return "RoleMenu{" +
                "roleId='" + roleId + '\'' +
                ", menuId='" + menuId + '\'' +
                '}';
    }
}
