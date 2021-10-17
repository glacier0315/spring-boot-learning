package com.glacier.activiti;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;


/**
 * date 2021-10-02 11:03
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootApplication(exclude = {
		SecurityAutoConfiguration.class,
		ManagementWebSecurityAutoConfiguration.class
})
public class Act7Demo1Application {
	
	public static void main(String[] args) {
		SpringApplication.run(Act7Demo1Application.class, args);
	}
}
