package com.glacier.swagger3.entity.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * HTTP结果封装
 *
 * @author glacier
 * @date 2019-10-14 15:53
 */
@ApiModel(description = "rest请求的返回模型，所有rest正常都返回该类的对象")
public class Result<T> implements Serializable {

    private static final long serialVersionUID = -8984794300938868661L;
    /**
     * 默认成功 状态码
     */
    public static final String SUCCUSS = "20000";
    /**
     * 响应编码
     */
    @ApiModelProperty(value = "响应编码")
    private String code;
    /**
     * 响应信息
     */
    @ApiModelProperty(value = "响应错误信息")
    private String msg;
    /**
     * 请求生成时间戳
     */
    @ApiModelProperty(value = "请求结果生成时间戳")
    private Long time;
    /**
     * 响应返回数据
     */
    @ApiModelProperty(value = "响应返回数据")
    private T data;

    public Result() {
        this(SUCCUSS, "成功！", System.currentTimeMillis(), null);
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

    public static String getSUCCUSS() {
        return SUCCUSS;
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
     * @param <T>
     * @return
     */
    public static <T> Result<T> error() {
        return error("系统错误！");
    }

    /**
     * 返回默认 "-1" 错误
     *
     * @param <T>
     * @return
     */
    public static <T> Result<T> error(String msg) {
        return error("-1", msg);
    }

    /**
     * 返回指定编码错误
     *
     * @param code
     * @param msg
     * @param <T>
     * @return
     */
    public static <T> Result<T> error(String code, String msg) {
        return new Result<>(code, msg, System.currentTimeMillis(), null);
    }

    /**
     * 返回默认成功状态
     *
     * @param <T>
     * @return
     */
    public static <T> Result<T> ok() {
        return ok("成功！", null);
    }

    /**
     * 返回成功状态 携带指定数据
     *
     * @param data
     * @param <T>
     * @return
     */
    public static <T> Result<T> ok(T data) {
        return ok("成功！", data);
    }

    /**
     * 返回成功状态 携带指定数据和消息
     *
     * @param msg
     * @param data
     * @param <T>
     * @return
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
