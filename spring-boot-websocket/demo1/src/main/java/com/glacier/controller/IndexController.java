package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.UUID;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@Controller
public class IndexController {

    @GetMapping("")
    public String index(Model model) {
		model.addAttribute("sid", UUID.randomUUID().toString());
		return "index";
    }
	
	@GetMapping("/u/{sid}")
	public String index(@PathVariable("sid") String sid, Model model) {
		model.addAttribute("sid", sid);
		return "index";
	}
}
