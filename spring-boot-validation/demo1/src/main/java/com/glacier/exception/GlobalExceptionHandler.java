package com.glacier.exception;

import com.glacier.domain.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.validation.ConstraintViolationException;

/**
 * date 2022-01-20 14:34
 * 统一异常处理
 *
 * @author glacier
 * @version 1.0
 */
@RestControllerAdvice
public class GlobalExceptionHandler {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);
	
	/**
	 * 异常 统一处理
	 *
	 * @param e
	 * @return
	 */
	@ExceptionHandler(value = BindException.class)
	@ResponseBody
	public Result<String> handle500(BindException e) {
		LOGGER.error("参数校验失败！", e);
		return Result.fail(500, "参数校验失败！");
	}
	
	/**
	 * 异常 统一处理
	 *
	 * @param e
	 * @return
	 */
	@ExceptionHandler(value = ConstraintViolationException.class)
	@ResponseBody
	public Result<String> handle500(ConstraintViolationException e) {
		LOGGER.error("参数校验失败！", e);
		return Result.fail(500, "参数校验失败！");
	}
	
	/**
	 * 异常 统一处理
	 *
	 * @param e
	 * @return
	 */
	@ExceptionHandler(value = Exception.class)
	@ResponseBody
	public Result<String> handle500(Exception e) {
		LOGGER.error("未知异常！", e);
		return Result.fail(500, "未知异常！");
	}
}
