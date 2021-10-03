package com.glacier.shiro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * date 2021-10-03 16:28
 *
 * @author glacier
 * @version 1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("")
	public String index(){
		return "userList";
	}
	
	@GetMapping("add")
	public String add(){
		return "userForm";
	}
	
	@GetMapping("delete")
	public String delete(){
		return "userDelete";
	}
}
