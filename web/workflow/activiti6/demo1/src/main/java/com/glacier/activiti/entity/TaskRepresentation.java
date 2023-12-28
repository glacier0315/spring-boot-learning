package com.glacier.activiti.entity;


import java.io.Serializable;

/**
 * date 2021-10-02 11:03
 *
 * @author glacier
 * @version 1.0
 */
public class TaskRepresentation implements Serializable {
	
	private static final long serialVersionUID = 8302171097729139085L;
	private String id;
	private String name;
	
	public TaskRepresentation(String id, String name) {
		this.id = id;
		this.name = name;
	}
	
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
	
	@Override
	public String toString() {
		return "TaskRepresentation{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				'}';
	}
}
