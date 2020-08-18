package com.glacier;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 主程序入口
 *
 * @author glacier
 * @version 1.0
 * @date 2019-04-24 20:27
 */
@SpringBootApplication(exclude = DruidDataSourceAutoConfigure.class)
public class MybatisPlusDynamic1Application {

    public static void main(String[] args) {
        SpringApplication.run(MybatisPlusDynamic1Application.class, args);
    }

}
