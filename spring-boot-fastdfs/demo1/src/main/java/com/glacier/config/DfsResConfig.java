package com.glacier.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * fastdfs 配置
 *
 * @author glacier
 * @version 1.0
 * date 2020-02-10 19:33
 */
@Component
@ConfigurationProperties(prefix = "fdfs")
public class DfsResConfig implements Serializable {

    private static final long serialVersionUID = 7177348548467185269L;
    private String resHost;
    private String resPort;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getResHost() {
        return this.resHost;
    }

    public void setResHost(String resHost) {
        this.resHost = resHost;
    }

    public String getResPort() {
        return this.resPort;
    }

    public void setResPort(String resPort) {
        this.resPort = resPort;
    }

    @Override
    public String toString() {
        return "DfsResConfig{" +
                "resHost='" + this.resHost + '\'' +
                ", resPort='" + this.resPort + '\'' +
                '}';
    }
}
