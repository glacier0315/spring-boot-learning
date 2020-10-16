package com.glacier.controller;

import com.glacier.config.DfsResConfig;
import com.glacier.domain.Result;
import com.glacier.util.FileDfsUtil;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * fastdfs 控制层
 *
 * @author glacier
 * @version 1.0
 * date 2020-02-10 19:33
 */
@RestController
@RequestMapping("/dfs")
public class FileDfsController {
    private static final Logger log = LoggerFactory.getLogger(FileDfsController.class);
    private final FileDfsUtil fastDfsClientUtil;
    private final DfsResConfig dfsResConfig;

    @Autowired
    public FileDfsController(FileDfsUtil fastDfsClientUtil,
                             DfsResConfig dfsResConfig) {
        this.fastDfsClientUtil = fastDfsClientUtil;
        this.dfsResConfig = dfsResConfig;
    }

    /**
     * 单文件上传
     *
     * @param file 文件
     * @return 上传响应
     */
    @PostMapping("/upload")
    public Result<String> upload(@RequestParam("file") MultipartFile file) {
        Result<String> result = this.fastDfsClientUtil.uploadFile(file);
        if (StringUtils.equals(result.getCode(), Result.SUCCUSS)) {
            String url = String.format("%s://%s:%s/%s", "http",
                    this.dfsResConfig.getResHost(),
                    this.dfsResConfig.getResPort(),
                    result.getData());
            return Result.ok(url);
        }
        return result;
    }

    /**
     * 单文件删除
     *
     * @param url 文件url
     * @return 删除文件响应
     */
    @PostMapping("/delete")
    public Result<String> deleteFile(String url) {
        return this.fastDfsClientUtil.deleteFile(url);
    }
}
