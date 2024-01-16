package com.glacier.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * date 2024-01-17 09:09
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestControllerAdvice
public class ExceptionHandle {
    @ExceptionHandler(value = Exception.class)
    public String exception(Exception exception) {
        return exception.getMessage();
    }
}
