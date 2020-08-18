package com.glacier.mybatis.entity;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * 角色菜单关联模型
 *
 * @author glacier
 * @version 1.0
 * @date 2019-10-09 14:49
 */
@Data
@ToString
public class RoleMenu implements Serializable {

    private static final long serialVersionUID = -234428421997899712L;
    /**
     * 主键
     */
    private String id;
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

    public RoleMenu(String id, String roleId, String menuId) {
        this.id = id;
        this.roleId = roleId;
        this.menuId = menuId;
    }
}
