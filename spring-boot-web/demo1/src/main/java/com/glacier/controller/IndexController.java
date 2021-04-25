package com.glacier.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@RestController
public class IndexController {

    @RequestMapping()
    public String[] index(Model model) {
        String[] gnzy = {"我是1", "我是2", "我是3", "我是4"};
        return gnzy;
    }
}
