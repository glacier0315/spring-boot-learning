package com.glacier.controller;

import com.glacier.constant.Constant;
import com.glacier.service.TxtHandlerService;
import jakarta.annotation.Resource;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * date 2024-01-02 10:46
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestController
public class FileUploadController {
    @Resource
    private TxtHandlerService txtHandlerService;

    @SneakyThrows
    @PostMapping("/upload1")
    public String upload1(@RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
            return "fail";
        }
        Path path = Paths.get(Constant.UPLOAD_DIR + file.getOriginalFilename());
        // 保存文件
        Files.write(path, file.getBytes());
        return "ok";
    }
}
