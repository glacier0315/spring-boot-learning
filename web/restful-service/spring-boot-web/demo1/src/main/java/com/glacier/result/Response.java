package com.glacier.result;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serializable;
import java.time.Instant;

/**
 * date 2023-12-29 11:27
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
public class Response<T> implements Serializable {
    private int code;
    private String message;
    private T data;
    private Long timestamp;

    public Response() {
        this.timestamp = Instant.now().toEpochMilli();
    }

    public Response(int code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
        this.timestamp = Instant.now().toEpochMilli();
    }

    public static <T> Response<T> ok(T data) {
        return new Response<>(0, "success", data);
    }

    public static <T> Response<T> error(int code, String message) {
        return new Response<>(code, message, null);
    }

    public static <T> Response<T> error(int code, String message, T data) {
        return new Response<>(code, message, data);
    }
}
