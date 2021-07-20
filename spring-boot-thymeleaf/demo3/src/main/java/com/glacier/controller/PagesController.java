package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * date 2021-07-21 15:29
 *
 * @author glacier
 * @version 1.0
 */
@Controller
@RequestMapping("/pages")
public class PagesController {
	
	@GetMapping("/widgets")
	public String widgets() {
		return "pages/widgets";
	}
	
	@GetMapping("/kanban")
	public String kanban() {
		return "pages/kanban";
	}
	
	@GetMapping("/calendar")
	public String calendar() {
		return "pages/calendar";
	}
	
	@GetMapping("/gallery")
	public String gallery() {
		return "pages/gallery";
	}
	
	@GetMapping("/charts/{file}")
	public String charts(@PathVariable("file") String file) {
		return "pages/charts/" + file;
	}
}
