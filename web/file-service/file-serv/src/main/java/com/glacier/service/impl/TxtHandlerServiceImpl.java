package com.glacier.service.impl;

import com.glacier.constant.Constant;
import com.glacier.service.TxtHandlerService;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;

/**
 * date 2024-01-02 10:56
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class TxtHandlerServiceImpl implements TxtHandlerService {

    @SneakyThrows
    @Override
    public Path textToTxt(String text) {
        Path path = Paths.get(Constant.TMP_DIR, System.currentTimeMillis() + ".txt");
        File file = path.toFile();
        // 创建父目录
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        // 创建文件
        if (!file.exists()) {
            file.createNewFile();
        }
        // 读取字符串，写入文件
        try (OutputStream os = new FileOutputStream(file);
             Writer writer = new OutputStreamWriter(os, StandardCharsets.UTF_8)) {
            writer.write(Objects.requireNonNullElse(text, ""));
        }
        return path;
    }
}
