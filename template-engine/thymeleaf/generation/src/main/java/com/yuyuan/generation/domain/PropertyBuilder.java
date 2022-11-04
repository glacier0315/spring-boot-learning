package com.yuyuan.generation.domain;

/**
 * date 2022-11-01 16:35
 *
 * @author glacier
 * @version 1.0
 */
public final class PropertyBuilder {
	private Class<?> javaType;
	private String name;
	
	private PropertyBuilder() {
	}
	
	public static PropertyBuilder aProperty() {
		return new PropertyBuilder();
	}
	
	public PropertyBuilder javaType(Class<?> javaType) {
		this.javaType = javaType;
		return this;
	}
	
	public PropertyBuilder name(String name) {
		this.name = name;
		return this;
	}
	
	public Property build() {
		Property property = new Property();
		property.setJavaType(javaType);
		property.setName(name);
		return property;
	}
}
