package com.glacier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@Controller
public class IndexController {

    @GetMapping("")
    public String index(Model model) {
        return "index";
    }

    @GetMapping("/hello")
    public String hello(Model model) {
        String[] s = {"我是1", "我是2", "我是3", "我是5"};
        model.addAttribute("s", s);
        return "core/hello";
    }
}
