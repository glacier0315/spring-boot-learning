package com.glacier.properties;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
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
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
public class DfsProperties implements Serializable {

    private static final long serialVersionUID = 7177348548467185269L;
    private String resHost;
    private String resPort;
}
