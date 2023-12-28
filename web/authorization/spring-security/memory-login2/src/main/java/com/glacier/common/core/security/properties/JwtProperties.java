package com.glacier.common.core.security.properties;

import java.io.Serializable;

/**
 * date 2021-07-14 17:26
 *
 * @author glacier
 * @version 1.0
 */
public class JwtProperties implements Serializable {
    private static final long serialVersionUID = 3118669667080988194L;
    /**
     * token有效期,单位分钟
     */
    private int expireTime = 5;
    /**
     * 设置Remember-me功能后的token有效期
     */
    private int expireTimeRemember = 7 * 24 * 60;
    /**
     * 密码
     */
    private String secret = "bfskgisbkhsibksygdbflnkerdu";
    
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    
    public int getExpireTime() {
        return expireTime;
    }
    
    public void setExpireTime(int expireTime) {
        this.expireTime = expireTime;
    }
    
    public int getExpireTimeRemember() {
        return expireTimeRemember;
    }
    
    public void setExpireTimeRemember(int expireTimeRemember) {
        this.expireTimeRemember = expireTimeRemember;
    }
    
    public String getSecret() {
        return secret;
    }
    
    public void setSecret(String secret) {
        this.secret = secret;
    }
    
    @Override
    public String toString() {
        return "JwtProperties{" +
                "expireTime=" + expireTime +
                ", expireTimeRemember=" + expireTimeRemember +
                ", secret='" + secret + '\'' +
                '}';
    }
}
