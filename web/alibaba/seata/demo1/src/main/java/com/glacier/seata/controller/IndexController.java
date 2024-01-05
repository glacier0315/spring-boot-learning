package com.glacier.seata.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2024-01-05 12:56
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class IndexController {

    @GetMapping(value = "")
    public String index() {
        return "index";
    }
}
