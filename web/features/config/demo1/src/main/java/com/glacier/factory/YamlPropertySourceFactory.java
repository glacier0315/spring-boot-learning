package com.glacier.factory;

import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.env.PropertySource;
import org.springframework.core.io.support.EncodedResource;
import org.springframework.core.io.support.PropertySourceFactory;
import org.springframework.lang.Nullable;

import java.io.IOException;
import java.util.Properties;

/**
 * date 2024-01-29 15:47
 *
 * @author glacier
 * @version 1.0
 */
public class YamlPropertySourceFactory implements PropertySourceFactory {
    @Override
    public PropertySource<?> createPropertySource(@Nullable String name, EncodedResource resource) throws IOException {
        // 如果没有传入名称则取文件名
        String sourceName = name != null && !name.isBlank() ? name : resource.getResource().getFilename();
        if (sourceName == null || sourceName.isBlank()) {
            return null;
        }

        YamlPropertiesFactoryBean factory = new YamlPropertiesFactoryBean();
        factory.setResources(resource.getResource());
        factory.afterPropertiesSet();

        Properties properties = factory.getObject();
        if (properties != null) {
            return new PropertiesPropertySource(sourceName, properties);
        }
        return null;
    }
}
