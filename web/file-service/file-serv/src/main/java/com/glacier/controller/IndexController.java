package com.glacier.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2024-01-02 10:41
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class IndexController {

    @GetMapping("")
    public String index() {
        return "index";
    }
}
