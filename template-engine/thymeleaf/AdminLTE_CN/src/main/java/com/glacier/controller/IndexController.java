package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * date 2022-10-16 21:19
 *
 * @author glacier
 * @version 1.0
 */
@Controller
public class IndexController {
	
	@GetMapping(value = {"", "index"})
	public String index() {
		return "index";
	}
	
	@GetMapping("index2")
	public String index2() {
		return "index2";
	}
	
	@GetMapping("index3")
	public String index3() {
		return "index3";
	}
	
	@GetMapping("iframe")
	public String iframe() {
		return "iframe";
	}
	
	@GetMapping("iframe-dark")
	public String iframeDark() {
		return "iframe-dark";
	}
	
	@GetMapping("starter")
	public String starter() {
		return "starter";
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		return "login";
	}
}
