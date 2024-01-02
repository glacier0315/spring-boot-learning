package com.glacier.controller;

import com.glacier.service.TxtHandlerService;
import com.glacier.utils.FileUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

/**
 * date 2024-01-02 10:51
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@RestController
public class FileDownloadController {

    @jakarta.annotation.Resource
    private TxtHandlerService txtHandlerService;

    /**
     * 下载
     *
     * @param text
     * @return
     */
    @SneakyThrows
    @RequestMapping("/download1")
    public ResponseEntity<Resource> download1(String text) {
        Path path = txtHandlerService.textToTxt(text);
        Resource resource = new InputStreamResource(Files.newInputStream(path));

        HttpHeaders headers = new HttpHeaders();
        headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename="
                + path.toFile().getName());

        return ResponseEntity.ok()
                .headers(headers)
                .contentLength(Files.size(path))
                .contentType(MediaType.APPLICATION_OCTET_STREAM)
                .body(resource);
    }

    /**
     * 下载
     *
     * @param text
     * @param response
     */
    @RequestMapping("/download2")
    public void download2(String text, HttpServletResponse response) {
        File file = txtHandlerService.textToTxt(text).toFile();

        response.reset();
        response.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" +
                URLEncoder.encode(file.getName(), StandardCharsets.UTF_8));
        response.setCharacterEncoding(StandardCharsets.UTF_8.name());
        response.setContentLength((int) file.length());
        response.setContentType(MediaType.APPLICATION_OCTET_STREAM_VALUE);
        try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
             OutputStream os = response.getOutputStream();) {

            int i;
            byte[] bytes = new byte[1024];
            while ((i = bis.read(bytes)) != -1) {
                os.write(bytes, 0, i);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 下载
     *
     * @param text
     * @param response
     */
    @RequestMapping("/download3")
    public void download3(String text, HttpServletRequest request, HttpServletResponse response) {
        File file = txtHandlerService.textToTxt(text).toFile();
        FileUtils.downFile(file, request, response);
    }
}
