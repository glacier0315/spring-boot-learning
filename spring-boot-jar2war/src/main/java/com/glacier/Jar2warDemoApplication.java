package com.glacier;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/**
 * date 2022-01-18 16:06
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootApplication
public class Jar2warDemoApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(Jar2warDemoApplication.class, args);
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
