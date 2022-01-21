package com.glacier.entity.builder;

import com.glacier.entity.Role;

import java.time.LocalDateTime;

/**
 * date 2022-01-21 09:02
 *
 * @author glacier
 * @version 1.0
 */
public final class RoleBuilder {
	private String id;
	private String name;
	private String code;
	private String status;
	private String description;
	private String dataScope;
	private String createBy;
	private LocalDateTime createDate;
	private String updateBy;
	private LocalDateTime updateDate;
	private String delFlag = "0";
	
	private RoleBuilder() {
	}
	
	public static RoleBuilder aRole() {
		return new RoleBuilder();
	}
	
	public RoleBuilder id(String id) {
		this.id = id;
		return this;
	}
	
	public RoleBuilder name(String name) {
		this.name = name;
		return this;
	}
	
	public RoleBuilder code(String code) {
		this.code = code;
		return this;
	}
	
	public RoleBuilder status(String status) {
		this.status = status;
		return this;
	}
	
	public RoleBuilder description(String description) {
		this.description = description;
		return this;
	}
	
	public RoleBuilder dataScope(String dataScope) {
		this.dataScope = dataScope;
		return this;
	}
	
	public RoleBuilder createBy(String createBy) {
		this.createBy = createBy;
		return this;
	}
	
	public RoleBuilder createDate(LocalDateTime createDate) {
		this.createDate = createDate;
		return this;
	}
	
	public RoleBuilder updateBy(String updateBy) {
		this.updateBy = updateBy;
		return this;
	}
	
	public RoleBuilder updateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
		return this;
	}
	
	public RoleBuilder delFlag(String delFlag) {
		this.delFlag = delFlag;
		return this;
	}
	
	public Role build() {
		Role role = new Role();
		role.setId(id);
		role.setName(name);
		role.setCode(code);
		role.setStatus(status);
		role.setDescription(description);
		role.setDataScope(dataScope);
		role.setCreateBy(createBy);
		role.setCreateDate(createDate);
		role.setUpdateBy(updateBy);
		role.setUpdateDate(updateDate);
		role.setDelFlag(delFlag);
		return role;
	}
}
