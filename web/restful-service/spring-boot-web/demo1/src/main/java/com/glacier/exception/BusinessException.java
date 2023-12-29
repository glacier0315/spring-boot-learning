package com.glacier.exception;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * date 2023-12-29 11:42
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString(callSuper = false)
@EqualsAndHashCode(callSuper = false)
public class BusinessException extends RuntimeException {
    private int code;
    private String msg;

    public BusinessException() {
    }

    public BusinessException(int code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }
}
