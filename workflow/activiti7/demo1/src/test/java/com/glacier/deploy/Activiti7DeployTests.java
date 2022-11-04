package com.glacier.deploy;

import org.activiti.engine.RepositoryService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2022-01-17 22:29
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class Activiti7DeployTests {

    @Autowired
    private RepositoryService repositoryService;

    /**
     * 流程部署
     */
    @Test
	void test1() {
        repositoryService.createDeployment()
                .addClasspathResource("processes/askForLeaveBpm.bpmn")
                .name("请假流程")
                .key("ASK_FOR_LEAVE_ACT")
                .deploy();

        System.out.println("流程部署成功！");
    }
	
	/**
	 * 流程部署
	 */
	@Test
	void test2() {
		repositoryService.createDeployment()
				.addClasspathResource("processes/one-task-process.bpmn")
				.name("测试流程")
				.key("ONE_TASK_PROCESS")
				.deploy();
		
		System.out.println("流程部署成功！");
	}
}
