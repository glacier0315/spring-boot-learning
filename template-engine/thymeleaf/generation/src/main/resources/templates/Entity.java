package com.yuyuan.[(${subPackage})];

import java.io.Serializable;

/**
 * date 2022-11-01 15:24
 *
 * @author glacier
 * @version 1.0
 */
public class [(${name})] implements Serializable {
	
	[# th:each="attr : ${attrs}"]
	private [(${attr.javaType})] [(${attr.name})];
	[/]
}
