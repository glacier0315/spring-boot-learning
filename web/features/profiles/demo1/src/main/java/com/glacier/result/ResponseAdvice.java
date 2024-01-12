package com.glacier.result;

import jakarta.annotation.Resource;
import lombok.SneakyThrows;
import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

/**
 * date 2023-12-29 11:25
 * 拦截controller返回值，封装后统一返回格式
 *
 * @author glacier
 * @version 1.0
 */
@RestControllerAdvice
public class ResponseAdvice implements ResponseBodyAdvice<Object> {
    private JsonMapper jsonMapper;

    @Resource
    public void setJsonMapper(JsonMapper jsonMapper) {
        this.jsonMapper = jsonMapper;
    }


    @Override
    public boolean supports(MethodParameter returnType, Class converterType) {
        return true;
    }

    @SneakyThrows
    @Override
    public Object beforeBodyWrite(Object o, MethodParameter returnType, MediaType selectedContentType, Class selectedConverterType, ServerHttpRequest request, ServerHttpResponse response) {
        //如果Controller返回String的话，SpringBoot不会帮我们自动封装而直接返回，因此我们需要手动转换成json。
        if (o instanceof String) {
            return jsonMapper.toJsonString(Response.ok(o));
        }
        // 防止重复包裹的问题出现
        if (o instanceof Response) {
            return o;
        }
        return Response.ok(o);
    }
}
