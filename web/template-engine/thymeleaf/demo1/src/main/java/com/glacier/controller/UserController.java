package com.glacier.controller;

import com.glacier.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

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
		List<User> list = new ArrayList<>();
		User user = null;
		for (int i = 0, n = 10; i < n; i++) {
			user = new User("id_" + i, "name_" + i, "pw_" + i, i % 2);
			list.add(user);
		}
		model.addAttribute("users", list);
		return "user/list";
	}
	
	@RequestMapping(value = "list")
	public String list(Model model, User user) {
		log.info("测试thymeleay {}", user);
		List<User> list = new ArrayList<>();
		User item = null;
		SecureRandom random = new SecureRandom();
		int num = random.nextInt(100);
		for (int i = num, n = num + 10; i < n; i++) {
			item = new User("id_" + i, "name_" + i, "pw_" + i, i % 2);
			list.add(item);
		}
		model.addAttribute("users", list);
		return "user/list::table_refresh";
	}
	
	
}
