package com.glacier.mybatis.config;

import com.glacier.mybatis.utils.MybatisBatchUtils;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
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

    /**
     * 批量插入
     * @param sqlSessionFactory
     * @return
     */
    @Bean
    MybatisBatchUtils mybatisBatchUtils(SqlSessionFactory sqlSessionFactory){
        return new MybatisBatchUtils(sqlSessionFactory);
    }
}
