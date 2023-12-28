package com.glacier.sys.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@GetMapping()
	public String index(Model model) {
		log.info("测试thymeleay");
		model.addAttribute("users", new ArrayList<>());
		return "user/list";
	}
	
	
}
