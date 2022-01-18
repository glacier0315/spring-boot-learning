package com.glacier;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@SpringBootApplication
public class WebDemo1Application {
	
	public static void main(String[] args) {
		SpringApplication.run(WebDemo1Application.class, args);
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
