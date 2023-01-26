package com.glacier.modules.sys.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.glacier.core.domain.IdEntity;

import jakarta.persistence.*;
import java.util.List;


/**
 * 省份
 * <p>
 * 循环序列化报错，类前面加上
 *
 * @author glacier
 * @version 1.0.0
 * @JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler", "fieldHandler" })
 * @since <pre>2017-03-29</pre>
 */

@Entity
@Table(name = "t_s_province")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler", "fieldHandler"})
public class Province extends IdEntity {
	
	/**
	 *
	 */
	private static final long serialVersionUID = 2339289932267552631L;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 编码
	 */
	private String code;
	/**
	 * 类型 0：省，1：城市，2：区
	 */
	private int type;
	/**
	 * 父级ID
	 */
	private String parentId;
	
	/**
	 * 子级
	 */
	private List<Province> provinces;
	
	@Column(name = "name", length = 50)
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "code", length = 20)
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	@Column(name = "type", length = 4)
	public int getType() {
		return type;
	}
	
	public void setType(int type) {
		this.type = type;
	}
	
	@Column(name = "parent_id", length = 64)
	public String getParentId() {
		return parentId;
	}
	
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	public List<Province> getProvinces() {
		return provinces;
	}
	
	public void setProvinces(List<Province> provinces) {
		this.provinces = provinces;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Province{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				", code='" + code + '\'' +
				", type=" + type +
				", parentId='" + parentId + '\'' +
				", provinces=" + provinces +
				'}';
	}
}
