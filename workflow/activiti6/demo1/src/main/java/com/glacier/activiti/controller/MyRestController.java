package com.glacier.activiti.controller;

import com.glacier.activiti.entity.TaskRepresentation;
import com.glacier.activiti.service.MyService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * date 2021-10-02 11:03
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class MyRestController {
	
	@Autowired
	private MyService myService;
	
	@PostMapping(value = "/process")
	public void startProcessInstance() {
		myService.startProcess();
	}
	
	@GetMapping(value = "/tasks")
	public List<TaskRepresentation> getTasks(@RequestParam String assignee) {
		List<Task> tasks = myService.getTasks(assignee);
		List<TaskRepresentation> dtos = new ArrayList<>();
		for (Task task : tasks) {
			dtos.add(new TaskRepresentation(task.getId(), task.getName()));
		}
		return dtos;
	}
}
