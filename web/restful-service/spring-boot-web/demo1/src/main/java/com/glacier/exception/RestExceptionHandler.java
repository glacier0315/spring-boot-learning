package com.glacier.exception;

import com.glacier.result.Response;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * date 2023-12-29 11:35
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestControllerAdvice
public class RestExceptionHandler {

    /**
     * 处理其他异常
     *
     * @param e otherException
     * @return
     */
    @ExceptionHandler(Exception.class)
    public Response<String> exception(Exception e) {
        log.error("异常 exception = {}", e.getMessage(), e);
        return Response.error(500, e.getMessage());
    }

    /**
     * 处理自定义异常
     *
     * @param e BusinessException
     * @return
     */
    @ExceptionHandler(BusinessException.class)
    public Response<String> businessException(BusinessException e) {
        log.error("业务异常 code={}, BusinessException = {}", e.getCode(), e.getMessage(), e);
        return Response.error(e.getCode(), e.getMsg());
    }

    /**
     * 处理空指针的异常
     *
     * @param e NullPointerException
     * @return
     * @description 空指针异常定义为前端传参错误，返回400
     */
    @ExceptionHandler(NullPointerException.class)
    public Response<String> nullPointerException(NullPointerException e) {
        log.error("空指针异常 NullPointerException ", e);
        return Response.error(400, e.getMessage());
    }

    /**
     * 处理404异常
     *
     * @param e NoHandlerFoundException
     * @return
     */
    @ExceptionHandler(NoHandlerFoundException.class)
    public Response<String> noHandlerFoundException(HttpServletRequest req, Exception e) {
        log.error("404异常 NoHandlerFoundException, method = {}, path = {} ", req.getMethod(), req.getServletPath(), e);
        return Response.error(404, "未找到您请求的资源。");
    }

    /**
     * 处理请求方式错误(405)异常
     *
     * @param e HttpRequestMethodNotSupportedException
     * @return
     */
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public Response<String> HttpRequestMethodNotSupportedException(HttpServletRequest req, Exception e) {
        log.error("请求方式错误(405)异常 HttpRequestMethodNotSupportedException, method = {}, path = {}", req.getMethod(), req.getServletPath(), e);
        return Response.error(405, "请求方式错误，请检查后重试。");
    }
}
