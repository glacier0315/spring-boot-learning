package com.glacier.service;

import java.nio.file.Path;

/**
 * date 2024-01-02 10:54
 *
 * @author glacier
 * @version 1.0
 */
public interface TxtHandlerService {

    /**
     * 文本转txt
     *
     * @param text 文本
     * @return txt
     */
    Path textToTxt(String text);
}
