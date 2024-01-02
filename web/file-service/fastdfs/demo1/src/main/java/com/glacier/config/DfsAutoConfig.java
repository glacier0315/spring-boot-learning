package com.glacier.config;


import com.github.tobato.fastdfs.FdfsClientConfig;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.glacier.properties.DfsProperties;
import com.glacier.util.FileDfsUtil;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.context.annotation.Import;
import org.springframework.jmx.support.RegistrationPolicy;

/**
 * fastdfs配置
 * EnableMBeanExport Jmx重复注册bean的问题
 *
 * @author glacier
 * @version 1.0
 * date 2020-02-10 19:33
 */
@Configuration
@Import(FdfsClientConfig.class)
@EnableMBeanExport(registration = RegistrationPolicy.IGNORE_EXISTING)
public class DfsAutoConfig {

    @Bean
    @ConfigurationProperties(prefix = "fdfs")
    DfsProperties dfsProperties(){
        return new DfsProperties();
    }

    @Bean
    FileDfsUtil fileDfsUtil(FastFileStorageClient storageClient) {
        return new FileDfsUtil(storageClient);
    }
}
