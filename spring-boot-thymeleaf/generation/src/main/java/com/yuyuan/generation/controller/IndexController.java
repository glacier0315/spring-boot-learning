package com.yuyuan.generation.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@RestController
public class IndexController {

    @GetMapping("")
    public String index(Model model) {
        return "index";
    }
}
