package com.glacier.util;


import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.exception.FdfsUnsupportStorePathException;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.glacier.domain.Result;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/**
 * fastdfs 工具类
 *
 * @author glacier
 * @version 1.0
 * date 2020-02-10 19:33
 */
@Slf4j
@RequiredArgsConstructor
public class FileDfsUtil {
    private final FastFileStorageClient storageClient;

    /**
     * MultipartFile类型的文件上传ַ
     *
     * @param file 文件
     * @return 响应
     */
    public Result<String> uploadFile(MultipartFile file) {
        try {
            String extension = FilenameUtils.getExtension(file.getOriginalFilename());
            if (extension == null || extension.isEmpty()) {
                extension = MimeTypeUtils.parseMimeType(Objects.requireNonNull(file.getContentType())).getSubtype();
            }
            StorePath path = this.storageClient.uploadFile(file.getInputStream(), file.getSize(),
                    extension, null);
            return Result.ok(path.getFullPath());
        } catch (Exception e) {
            log.error("上传失败，错误：", e);
            return Result.error();
        }
    }

    /**
     * 普通的文件上传
     *
     * @param file 文件
     * @return 响应
     */
    public Result<String> uploadFile(File file) {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            StorePath path = this.storageClient.uploadFile(fileInputStream, file.length(),
                    FilenameUtils.getExtension(file.getName()), null);
            return Result.ok(path.getFullPath());
        } catch (Exception e) {
            log.error("上传失败，错误：", e);
            return Result.error("上传失败");
        } finally {
            IOUtils.closeQuietly(fileInputStream, e -> {
                log.error("关闭出现异常：", e);
            });
        }
    }

    /**
     * 带输入流形式的文件上传
     *
     * @param is       输入流
     * @param size     单校
     * @param fileName 文件名你
     * @return 响应
     */
    public Result<String> uploadFileStream(InputStream is, long size, String fileName) {
        StorePath path = this.storageClient.uploadFile(is, size, fileName, null);
        return Result.ok(path.getFullPath());
    }

    /**
     * 将一段文本文件写到fastdfs的服务器上
     *
     * @param content       文件内容
     * @param fileExtension 文件后缀
     * @return 响应
     */
    public Result<String> uploadFile(String content, String fileExtension) {
        byte[] buff = content.getBytes(StandardCharsets.UTF_8);
        ByteArrayInputStream stream = new ByteArrayInputStream(buff);
        StorePath path = this.storageClient.uploadFile(stream, buff.length, fileExtension, null);
        return Result.ok(path.getFullPath());
    }

    /**
     * 删除文件
     *
     * @param fileUrl 文件url
     * @return 响应
     */
    public Result<String> deleteFile(String fileUrl) {

        if (StringUtils.isBlank(fileUrl)) {
            log.info("删除失败，路径为空！");
            return Result.error();
        }
        try {
            StorePath storePath = StorePath.parseFromUrl(fileUrl);
            this.storageClient.deleteFile(storePath.getGroup(), storePath.getPath());
            return Result.ok();
        } catch (FdfsUnsupportStorePathException e) {
            log.error("文件删除错误：", e);
            return Result.error("文件删除出现错误！");
        }
    }
}
