package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-27 12:32
 */
@Controller
public class LoginController {
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
}
