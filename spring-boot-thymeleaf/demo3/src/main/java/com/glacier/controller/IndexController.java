package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * 2017/4/15 0015
 *
 * @author glacier
 * @version v1.0.0
 */
@Controller
public class IndexController {
	
	@GetMapping("")
	public String index(Model model) {
		return "index";
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		return "login";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		return "pages/dashboard/index";
	}
	
	@GetMapping("/dashboard2")
	public String dashboard2(Model model) {
		return "pages/dashboard/index2";
	}
	
	@GetMapping("/dashboard3")
	public String dashboard3(Model model) {
		return "pages/dashboard/index3";
	}
}
