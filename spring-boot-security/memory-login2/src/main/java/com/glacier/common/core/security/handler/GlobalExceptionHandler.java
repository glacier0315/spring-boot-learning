package com.glacier.common.core.security.handler;

import com.glacier.common.core.domain.Result;
import com.glacier.common.core.factory.ResultBuildFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * date 2021-07-18 10:27
 *
 * @author glacier
 * @version 1.0
 */
@RestControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(value = Exception.class)
	public Result<String> exceptionHandling(Exception exception) {
		return ResultBuildFactory.error("500", exception.getMessage());
	}
}
