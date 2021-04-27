package com.glacier.shiro.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * date 2021-04-27 20:33
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
@MapperScan(basePackages = {"com.glacier.shiro.mapper"})
public class MybatisConfig {
}
