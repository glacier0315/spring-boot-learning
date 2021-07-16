package com.glacier.common.core.factory;


import com.glacier.common.core.domain.Result;

/**
 * date 2021-07-07 16:43
 * 响应创建工厂
 *
 * @author glacier
 * @version 1.0
 */
public class ResultBuildFactory {
    
    private ResultBuildFactory() {
    }
    
    /**
     * 创建响应
     *
     * @param code
     * @param msg
     * @param time
     * @param data
     * @param <T>
     * @return
     */
    public static <T> Result<T> create(String code, String msg, Long time, T data) {
        return new Result<>(code, msg, time, data);
    }
    
    /**
     * 创建
     *
     * @param code
     * @param msg
     * @param data
     * @param <T>
     * @return
     */
    public static <T> Result<T> create(String code, String msg, T data) {
        return new Result<>(code, msg, System.currentTimeMillis(), data);
    }
    
    /**
     * @param msg
     * @param data
     * @param <T>
     * @return
     */
    public static <T> Result<T> ok(String msg, T data) {
        return create(Result.SUCCUSS, msg, data);
    }
    
    /**
     * @param data
     * @param <T>
     * @return
     */
    public static <T> Result<T> ok(T data) {
        return ok("成功!", data);
    }
    
    /**
     * @param <T>
     * @return
     */
    public static <T> Result<T> ok() {
        return ok("成功!", null);
    }
    
    /**
     * @param code
     * @param msg
     * @param <T>
     * @return
     */
    public static <T> Result<T> error(String code, String msg) {
        return create(code, msg, null);
    }
}
