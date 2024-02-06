package com.glacier.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */

@Slf4j
@RestController
public class IndexController {

    @RequestMapping()
    public String[] index() {
        return new String[]{"我是1", "我是2", "我是3", "我是4"};
    }

    @RequestMapping("/warn")
    public String warn() {
        log.warn("warn");
        return "hello";
    }

    @RequestMapping("/err")
    public String error() {
        log.error("异常", new RuntimeException("自定义异常！"));
        return "hello";
    }

}
