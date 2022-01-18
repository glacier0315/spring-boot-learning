package com.glacier.admin.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 10:36
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class IndexController {
	
	@GetMapping("")
	public String index(){
		return "hello word";
	}
}
