package com.glacier.activiti;

import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/**
 * date 2021-10-02 11:03
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class ActDemo1Application {
	
	public static void main(String[] args) {
		SpringApplication.run(ActDemo1Application.class, args);
	}
}
