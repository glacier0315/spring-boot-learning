package com.glacier.controller;

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
}
