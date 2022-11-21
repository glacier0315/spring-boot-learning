package com.glacier;

import org.camunda.bpm.engine.RuntimeService;
import org.camunda.bpm.spring.boot.starter.annotation.EnableProcessApplication;
import org.camunda.bpm.spring.boot.starter.event.PostDeployEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.event.EventListener;

/**
 * date 2022-11-21 15:38
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootApplication
@EnableProcessApplication
public class CamundaWeb1Application {
	
	@Autowired
	private RuntimeService runtimeService;
	
	public static void main(String[] args) {
		SpringApplication.run(CamundaWeb1Application.class, args);
	}
	
	@EventListener
	public void processPostDeploy(PostDeployEvent event) {
		runtimeService.startProcessInstanceByKey("loanApproval");
	}
}
