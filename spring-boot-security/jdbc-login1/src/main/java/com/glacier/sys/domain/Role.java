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
}
