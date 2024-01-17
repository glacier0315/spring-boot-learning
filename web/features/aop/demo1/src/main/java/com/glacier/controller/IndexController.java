package com.glacier.controller;

import com.glacier.aop.Log;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:06
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class IndexController {

    @Log("首页")
    @GetMapping("")
    public String[] index() {
        return new String[]{"我是1", "我是2", "我是3", "我是4"};
    }

    @Log("异常")
    @GetMapping("/exp")
    public String exception() {
        throw new RuntimeException("异常1");
    }
}
