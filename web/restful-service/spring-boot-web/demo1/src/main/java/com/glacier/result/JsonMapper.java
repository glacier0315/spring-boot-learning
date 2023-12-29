package com.glacier.result;

/**
 * date 2023-12-29 17:03
 *
 * @author glacier
 * @version 1.0
 */
@FunctionalInterface
public interface JsonMapper {

    /**
     * 序列化
     *
     * @param t 待序列化对象
     * @return 序列化后的字符串
     */
    String toJsonString(Object t);
}
