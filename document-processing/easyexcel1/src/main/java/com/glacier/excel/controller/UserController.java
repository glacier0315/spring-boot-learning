package com.glacier.excel.controller;

import com.glacier.excel.domain.User;
import com.glacier.excel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:04
 */
@RestController
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("findAll")
	public List<User> findAll() {
		return this.userService.findAll();
	}
	
	@PostMapping("findList")
	public List<User> findList(User user) {
		return this.userService.findList(user);
	}
	
	@GetMapping("export")
	public void export(User user, HttpServletResponse response) {
		// 这里注意 有同学反应使用swagger 会导致各种问题，请直接用浏览器或者用postman
		response.setContentType("application/vnd.ms-excel");
		response.setCharacterEncoding("utf-8");
		try (ServletOutputStream out = response.getOutputStream()) {
			response.setHeader("Content-disposition",
					"attachment;filename=" + URLEncoder.encode("测试.xlsx", StandardCharsets.UTF_8));
			this.userService.exportExcel(user, out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
