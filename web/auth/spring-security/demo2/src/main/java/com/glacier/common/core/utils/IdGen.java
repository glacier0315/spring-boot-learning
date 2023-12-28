package com.glacier.common.core.utils;

import java.util.UUID;

/**
 * id生成工具类
 *
 * @author glacier
 * @version 1.0
 * date 2020-08-08 10:09
 */
public class IdGen {

    private IdGen() {
    }

    /**
     * 获取uuid
     *
     * @return 返回uuid
     */
    public static String uuid() {
        return UUID.randomUUID()
                .toString()
                .replaceAll("-", "");
    }
}
