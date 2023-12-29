package com.glacier.controller;

import com.glacier.exception.BusinessException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class IndexController {

    @RequestMapping()
    public String[] index() {
        return new String[]{"我是1", "我是2", "我是3", "我是4"};
    }

    @RequestMapping("/test1")
    public String test1() {
        int i = 1 / 0;
        return "hello";
    }

    @GetMapping("/test2")
    public String test2() {
        throw new NullPointerException("空指针案例");
    }

    @GetMapping("/test3")
    public String test3() {
        throw new BusinessException(300, "异常信息300");
    }

    @PostMapping("/test4")
    public String test4() {
        return "post test4";
    }
}
