package com.glacier.lifecycle.bean;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * date 2024-01-16 16:16
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class Demo1Service {
    public void test() {
        log.info("Demo1Service test");
    }
}
