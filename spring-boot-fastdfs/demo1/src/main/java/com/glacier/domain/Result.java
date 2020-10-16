package com.glacier.domain;

import java.io.Serializable;

/**
 * HTTP结果封装
 *
 * @author glacier
 * date 2019-10-14 15:53
 */
public class Result<T> implements Serializable {

    private static final long serialVersionUID = -8984794300938868661L;
    /**
     * 默认成功 状态码
     */
    public static final String SUCCUSS = "20000";
    /**
     * 响应编码
     */
    private String code;
    /**
     * 响应信息
     */
    private String msg;
    /**
     * 响应时间戳
     */
    private Long time;
    /**
     * 响应返回数据
     */
    private T data;

    public Result() {
        this(SUCCUSS, "ok", System.currentTimeMillis(), null);
    }

    public Result(String code, String msg, Long time, T data) {
        this.code = code;
        this.msg = msg;
        this.time = time;
        this.data = data;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Long getTime() {
        return this.time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public T getData() {
        return this.data;
    }

    public void setData(T data) {
        this.data = data;
    }

    /**
     * 返回默认 "500" 错误
     *
     * @param <T> 类型
     * @return 响应
     */
    public static <T> Result<T> error() {
        return error("500", "系统错误");
    }

    /**
     * 返回默认 "-1" 错误
     *
     * @param msg 错误信息
     * @param <T> 用户id
     * @return 响应
     */
    public static <T> Result<T> error(String msg) {
        return error("500", msg);
    }


    /**
     * 返回指定编码错误
     *
     * @param code 编码
     * @param msg  错误信息
     * @param <T>  类型
     * @return 响应
     */
    public static <T> Result<T> error(String code, String msg) {
        return new Result<>(code, msg, System.currentTimeMillis(), null);
    }

    /**
     * 返回默认成功状态
     *
     * @param <T> 类型
     * @return 响应
     */
    public static <T> Result<T> ok() {
        return ok("成功！", null);
    }

    /**
     * 返回成功状态 携带指定数据
     *
     * @param data 数据
     * @param <T>  类型
     * @return 响应
     */
    public static <T> Result<T> ok(T data) {
        return ok("成功！", data);
    }

    /**
     * 返回成功状态 携带指定数据和消息
     *
     * @param msg  成功信息
     * @param data 数据
     * @param <T>  类型
     * @return 响应
     */
    public static <T> Result<T> ok(String msg, T data) {
        return new Result<>(SUCCUSS, msg, System.currentTimeMillis(), data);
    }

    @Override
    public String toString() {
        return "Result{" +
                "code='" + this.code + '\'' +
                ", msg='" + this.msg + '\'' +
                ", time=" + this.time +
                ", data=" + this.data +
                '}';
    }
}
