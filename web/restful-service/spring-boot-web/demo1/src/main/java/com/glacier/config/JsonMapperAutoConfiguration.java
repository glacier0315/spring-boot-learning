package com.glacier.config;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.result.JsonMapper;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2023-12-29 17:05
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class JsonMapperAutoConfiguration {

//    /**
//     * json 序列化
//     *
//     * @return ObjectMapper
//     */
//    @Bean
//    @ConditionalOnMissingBean
//    @ConditionalOnClass(ObjectMapper.class)
//    ObjectMapper objectMapper() {
//        return new ObjectMapper();
//    }

    /**
     * json 序列化
     *
     * @param objectMapper objectMapper
     * @return JsonMapper
     */
    @Bean
    @ConditionalOnMissingBean
    @ConditionalOnClass(ObjectMapper.class)
    JsonMapper jacksonMapper(ObjectMapper objectMapper) {
        return (obj) -> {
            String result;
            try {
                result = objectMapper.writeValueAsString(obj);
            } catch (JsonProcessingException e) {
                throw new RuntimeException(e);
            }
            return result;
        };
    }

//    /**
//     * json 序列化
//     *
//     * @return JsonMapper
//     */
//    @Bean
//    @ConditionalOnMissingBean
//    @ConditionalOnClass(JSONObject.class)
//    JsonMapper fastJsonMapper() {
//        return JSONObject::toJSONString;
//    }
}
