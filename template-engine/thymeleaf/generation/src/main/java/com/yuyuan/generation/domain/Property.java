package com.yuyuan.generation.domain;

import java.io.Serializable;
import java.util.StringJoiner;

/**
 * date 2022-11-01 15:34
 *
 * @author glacier
 * @version 1.0
 */
public class Property implements Serializable {
	private static final long serialVersionUID = -1405331550420299490L;
	private Class<?> javaType;
	private String name;
	
	public Class<?> getJavaType() {
		return javaType;
	}
	
	public void setJavaType(Class<?> javaType) {
		this.javaType = javaType;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return new StringJoiner(", ", Property.class.getSimpleName() + "[", "]")
				.add("javaType=" + javaType)
				.add("name='" + name + "'")
				.toString();
	}
}
