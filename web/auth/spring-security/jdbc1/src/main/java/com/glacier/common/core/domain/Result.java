package com.glacier.common.core.domain;

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
