package com.glacier.act.domain;


import java.io.Serializable;

/**
 * date 2022-01-17 21:18
 *
 * @author glacier
 * @version 1.0
 */
public class ActivitiVo implements Serializable {
	
	/**
	 * 请假流程发起
	 */
	private String businessKey;
	private String username;
	private String time;
	private String count;
	private String pm;
	private String bm;
	
	/**
	 * 完成任务
	 */
	private String taskId;
	private boolean auditFlag;
	private String message;
	
	public ActivitiVo() {
	}
	
	public String getBusinessKey() {
		return businessKey;
	}
	
	public void setBusinessKey(String businessKey) {
		this.businessKey = businessKey;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getCount() {
		return count;
	}
	
	public void setCount(String count) {
		this.count = count;
	}
	
	public String getPm() {
		return pm;
	}
	
	public void setPm(String pm) {
		this.pm = pm;
	}
	
	public String getBm() {
		return bm;
	}
	
	public void setBm(String bm) {
		this.bm = bm;
	}
	
	public String getTaskId() {
		return taskId;
	}
	
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	
	public boolean isAuditFlag() {
		return auditFlag;
	}
	
	public void setAuditFlag(boolean auditFlag) {
		this.auditFlag = auditFlag;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "ActivitiVo{" +
				"businessKey='" + businessKey + '\'' +
				", username='" + username + '\'' +
				", time='" + time + '\'' +
				", count='" + count + '\'' +
				", pm='" + pm + '\'' +
				", bm='" + bm + '\'' +
				", taskId='" + taskId + '\'' +
				", auditFlag=" + auditFlag +
				", message='" + message + '\'' +
				'}';
	}
}
