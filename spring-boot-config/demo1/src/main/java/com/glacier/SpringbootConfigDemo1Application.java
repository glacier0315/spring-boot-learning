package com.glacier;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@EnableConfigurationProperties
@SpringBootApplication
public class SpringbootConfigDemo1Application {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringbootConfigDemo1Application.class, args);
	}
	
	/**
	 * 启动成功
	 */
	@Bean
	public ApplicationRunner applicationRunner() {
		return args -> {
			System.out.println("启动成功！");
		};
	}
}
