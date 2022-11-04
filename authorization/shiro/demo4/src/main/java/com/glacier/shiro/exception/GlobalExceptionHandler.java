package com.glacier.shiro.exception;

import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthorizedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * date 2021-10-05 08:47
 *
 * @author glacier
 * @version 1.0
 */
@ControllerAdvice
public class GlobalExceptionHandler {
    private static Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);

	/**
	 * 拦截未授权页面
	 * @param e
	 * @return
	 */
    @ResponseStatus(value = HttpStatus.FORBIDDEN)
    @ExceptionHandler(UnauthorizedException.class)
    public String handleException(UnauthorizedException e) {
        LOGGER.debug(e.getMessage());
        return "403";
    }

    @ResponseStatus(value = HttpStatus.FORBIDDEN)
    @ExceptionHandler(AuthorizationException.class)
    public String handleException2(AuthorizationException e) {
        LOGGER.debug(e.getMessage());
        return "403";
    }
}
