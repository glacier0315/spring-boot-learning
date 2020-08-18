package com.glacier;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 主程序入口
 *
 * @author glacier
 * @version 1.0
 * @date 2019-04-24 20:27
 */
@SpringBootApplication
@MapperScan("com.glacier.**.mapper")
public class MybatisPlusDemo1Application {

	public static void main(String[] args) {
		SpringApplication.run(MybatisPlusDemo1Application.class, args);
	}

}
