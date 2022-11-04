package com.glacier.config;


import com.glacier.Jar2warDemoApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * date 2022-01-18 16:06
 *
 * @author glacier
 * @version 1.0
 */
public class ServletInitializer extends SpringBootServletInitializer {
	
     @Override
     protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		 return application.sources(Jar2warDemoApplication.class);
     }
 }
