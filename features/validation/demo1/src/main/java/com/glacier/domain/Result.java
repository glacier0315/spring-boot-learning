package com.glacier.domain;

import java.io.Serializable;

/**
 * date 2022-01-20 14:38
 *
 * @author glacier
 * @version 1.0
 */
public class Result<T> implements Serializable {
	private static final long serialVersionUID = -120870636278929756L;
	private int status = 200;
	private String message;
	private T data;
	
	public Result() {
	}
	
	public Result(int status, String message, T data) {
		this.status = status;
		this.message = message;
		this.data = data;
	}
	
	public static <T> Result<T> ok(String message) {
		return new Result<>(200, message, null);
	}
	
	public static <T> Result<T> ok(String message, T data) {
		return new Result<>(200, message, data);
	}
	
	public static <T> Result<T> fail(int status, String message) {
		return new Result<>(status, message, null);
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	public T getData() {
		return data;
	}
	
	public void setData(T data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		return "Result{" +
				"status=" + status +
				", message='" + message + '\'' +
				", data=" + data +
				'}';
	}
}
