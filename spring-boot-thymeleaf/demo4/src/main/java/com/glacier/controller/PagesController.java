package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * date 2021-09-18 15:31
 *
 * @author glacier
 * @version 1.0
 */
@Controller
@RequestMapping("/view")
public class PagesController {
	
	@GetMapping("/code")
	public String code() {
		return "view/code/index";
	}
	
	@GetMapping("/console/{file}")
	public String console(@PathVariable("file") String file) {
		return "view/console/" + file;
	}
	
	@GetMapping("/document/{file}")
	public String document(@PathVariable("file") String file) {
		return "view/document/" + file;
	}
	
	@GetMapping("/echarts/{file}")
	public String echarts(@PathVariable("file") String file) {
		return "view/echarts/" + file;
	}
	
	@GetMapping("/error/{file}")
	public String error(@PathVariable("file") String file) {
		return "view/error/" + file;
	}
	
	@GetMapping("/result/{file}")
	public String result(@PathVariable("file") String file) {
		return "view/result/" + file;
	}
	
	@GetMapping("/system/{file}")
	public String system(@PathVariable("file") String file) {
		return "view/system/" + file;
	}
	
	@GetMapping("/system/operate/{file}")
	public String operate(@PathVariable("file") String file) {
		return "view/system/operate/" + file;
	}
}
