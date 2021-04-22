package com.glacier.mybatis.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 配置 mybatis-plus
 *
 * @author glacier
 * @version 1.0
 * @date 2020-02-08 21:07
 */
@Configuration
@EnableTransactionManagement
@MapperScan("com.glacier.mybatis.mapper")
public class MybatisConfig {

}
