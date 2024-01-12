package com.glacier.controller;

import com.glacier.property.CustomProp;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class CustomController {

    @Resource
    private CustomProp customPropA;

    @Resource
    private CustomProp customPropB;

    @GetMapping("/a")
    public CustomProp a() {
        return customPropA;
    }

    @GetMapping("/b")
    public CustomProp b() {
        return customPropB;
    }

}
