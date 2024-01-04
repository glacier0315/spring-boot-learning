package com.glacier.mybatis.config;

import com.glacier.mybatis.utils.MybatisBatchUtils;
import org.apache.ibatis.mapping.DatabaseIdProvider;
import org.apache.ibatis.mapping.VendorDatabaseIdProvider;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.Properties;

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

    @Bean
    public DatabaseIdProvider getDatabaseIdProvider() {
        DatabaseIdProvider databaseIdProvider = new VendorDatabaseIdProvider();
        Properties properties = new Properties();
        properties.setProperty("DM DBMS", "dm");
        properties.setProperty("MySQL", "mysql");
        properties.setProperty("Oracle", "oracle");
        properties.setProperty("PostgreSQL", "postgresql");
        databaseIdProvider.setProperties(properties);
        return databaseIdProvider;
    }
}
