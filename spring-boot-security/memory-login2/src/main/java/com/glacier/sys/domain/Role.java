package com.glacier.sys.domain;

import java.io.Serializable;

/**
 * date 2021-07-15 17:11
 *
 * @author glacier
 * @version 1.0
 */
public class Role implements Serializable {
	private static final long serialVersionUID = 8931112921591144112L;
	private String id;
	private String code;
	private String name;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Role{" +
				"id='" + id + '\'' +
				", code='" + code + '\'' +
				", name='" + name + '\'' +
				'}';
	}
	
	
	public static final class RoleBuilder {
		private String id;
		private String code;
		private String name;
		
		private RoleBuilder() {
		}
		
		public static RoleBuilder aRole() {
			return new RoleBuilder();
		}
		
		public RoleBuilder id(String id) {
			this.id = id;
			return this;
		}
		
		public RoleBuilder code(String code) {
			this.code = code;
			return this;
		}
		
		public RoleBuilder name(String name) {
			this.name = name;
			return this;
		}
		
		public Role build() {
			Role role = new Role();
			role.setId(id);
			role.setCode(code);
			role.setName(name);
			return role;
		}
	}
}
