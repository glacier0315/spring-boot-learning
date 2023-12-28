package com.glacier.activiti.service;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * date 2021-10-02 11:03
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class MyService {

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

	@Transactional(rollbackFor = {})
    public void startProcess() {
        runtimeService.startProcessInstanceByKey("oneTaskProcess");
    }
	
	@Transactional(rollbackFor = {})
    public List<Task> getTasks(String assignee) {
        return taskService.createTaskQuery()
				.taskAssignee(assignee)
				.list();
    }

}
