package com.glacier.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * date 2022-01-21 08:59
 *
 * @author glacier
 * @version 1.0
 */
@TableName("t_role")
public class Role implements Serializable {
	
	private static final long serialVersionUID = -3318599726827564559L;
	/**
	 * 主键
	 */
	@TableId(type = IdType.ASSIGN_UUID)
	private String id;
	/**
	 * 角色名称
	 */
	private String name;
	/**
	 * 角色编码
	 */
	private String code;
	/**
	 * 状态 1 正常  2 禁用
	 */
	private String status;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 数据权限 1 所有单位  2 所属一级单位及以下  3 所属二级单位及以下  4 所属单位部门及以下  5 自定义 6 自己
	 */
	private String dataScope;
	
	/**
	 * 创建人
	 */
	private String createBy;
	/**
	 * 创建时间
	 */
	private LocalDateTime createDate;
	/**
	 * 更新人
	 */
	private String updateBy;
	/**
	 * 更新时间
	 */
	private LocalDateTime updateDate;
	/**
	 * 删除标记 0 正常 （默认） 1 删除
	 */
	@TableLogic(value = "0", delval = "1")
	private String delFlag = "0";
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDataScope() {
		return dataScope;
	}
	
	public void setDataScope(String dataScope) {
		this.dataScope = dataScope;
	}
	
	public String getCreateBy() {
		return createBy;
	}
	
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	
	public LocalDateTime getCreateDate() {
		return createDate;
	}
	
	public void setCreateDate(LocalDateTime createDate) {
		this.createDate = createDate;
	}
	
	public String getUpdateBy() {
		return updateBy;
	}
	
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	
	public LocalDateTime getUpdateDate() {
		return updateDate;
	}
	
	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}
	
	public String getDelFlag() {
		return delFlag;
	}
	
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
	
	@Override
	public String toString() {
		return "Role{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				", code='" + code + '\'' +
				", status='" + status + '\'' +
				", description='" + description + '\'' +
				", dataScope='" + dataScope + '\'' +
				", createBy='" + createBy + '\'' +
				", createDate=" + createDate +
				", updateBy='" + updateBy + '\'' +
				", updateDate=" + updateDate +
				", delFlag='" + delFlag + '\'' +
				'}';
	}
	
	
	public static final class RoleBuilder {
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
}
