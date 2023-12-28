package com.glacier.act.service;


import com.glacier.act.domain.ActivitiVo;

import java.io.OutputStream;
import java.util.List;
import java.util.Map;

/**
 * date 2022-01-17 21:18
 *
 * @author glacier
 * @version 1.0
 */
public interface ActivitiService {
	/**
	 * @param processInstanceId
	 * @param outputStream
	 */
	void getFlowImgByInstanceId(String processInstanceId, OutputStream outputStream);
	
	/**
	 * @param activitiVo
	 */
	void askForLeave(ActivitiVo activitiVo);
	
	/**
	 * @param activitiVo
	 * @return
	 */
	List<Map<String, Object>> queryUserTaskByUserName(ActivitiVo activitiVo);
	
	/**
	 * @param activitiVo
	 * @return
	 */
	List<Map<String, Object>> getHistoricProcessInstance(ActivitiVo activitiVo);
	
	/**
	 * @param activitiVo
	 */
	void completeUserTaskById(ActivitiVo activitiVo);
}
