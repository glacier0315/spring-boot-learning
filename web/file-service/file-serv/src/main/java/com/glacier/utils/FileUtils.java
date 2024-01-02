package com.glacier.utils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.URLEncoder;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * date 2024-01-02 16:25
 * 文件操作工具类
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
public class FileUtils {

    public static final String DOT = ".";
    private static final Pattern PATTERN = Pattern.compile("^bytes=([0-9]+)-([0-9]+)?$");

    /**
     * 向浏览器发送文件下载，支持断点续传
     *
     * @param file     要下载的文件
     * @param request  请求对象
     * @param response 响应对象
     * @return 返回错误信息，无错误信息返回null
     */
    public static String downFile(File file, HttpServletRequest request, HttpServletResponse response) {
        return downFile(file, request, response, null);
    }

    /**
     * 向浏览器发送文件下载，支持断点续传
     *
     * @param file     要下载的文件
     * @param request  请求对象
     * @param response 响应对象
     * @param fileName 指定下载的文件名
     * @return 返回错误信息，无错误信息返回null
     */
    public static String downFile(File file, HttpServletRequest request, HttpServletResponse response, String fileName) {
        // 检查文件
        checkFile(file);
        // 获取RangeMeta对象
        RangeMeta rangeMeta = range(request.getHeader("Range"), file.length());
        resetResponse(response, rangeMeta,
                URLEncoder.encode(isBlank(fileName) ? file.getName() : fileName, StandardCharsets.UTF_8));
        long startTime = System.currentTimeMillis();
        try (OutputStream out = response.getOutputStream();
             WritableByteChannel outChannel = Channels.newChannel(out);
             RandomAccessFile raf = new RandomAccessFile(file, "r");
             FileChannel inChannel = raf.getChannel();) {
            long transfer;
            long readLength = rangeMeta.pastLength();
            long total = 0L;
            while (readLength < rangeMeta.toLength()) {
                log.debug("开始读取数据，跳过已读取: {}", readLength);
                transfer = inChannel.transferTo(readLength, rangeMeta.contentLength(), outChannel);
                log.debug("发送: {}", transfer);
                if (transfer <= 0) {
                    break;
                }
                total += transfer;
                readLength += transfer;
            }
            log.debug("---------------下载完成！发送：{}", total);
        } catch (IOException e) {
            /*
             * 在写数据的时候， 对于 ClientAbortException 之类的异常，
             * 是因为客户端取消了下载，而服务器端继续向浏览器写入数据时， 抛出这个异常，这个是正常的。
             * 尤其是对于迅雷这种吸血的客户端软件， 明明已经有一个线程在读取 bytes=1275856879-1275877358，
             * 如果短时间内没有读取完毕，迅雷会再启第二个、第三个。。。线程来读取相同的字节段， 直到有一个线程读取完毕，迅雷会 KILL
             * 掉其他正在下载同一字节段的线程， 强行中止字节读出，造成服务器抛 ClientAbortException。
             * 所以，我们忽略这种异常
             */
            log.warn("提醒：向客户端传输时出现IO异常，但此异常是允许的，有可能客户端取消了下载，导致此异常，不用关心!", e);
        }
        log.info("---------------下载耗时： {} ms, 响应状态: {}",
                (System.currentTimeMillis() - startTime), response.getStatus());
        return null;
    }

    /**
     * 重置响应
     *
     * @param response  响应对象
     * @param rangeMeta range信息
     * @param fileName  文件名
     */
    private static void resetResponse(HttpServletResponse response, RangeMeta rangeMeta, String fileName) {
        response.reset();
        // 通知客户端允许断点续传，响应格式为：Accept-Ranges: bytes
        response.setHeader("Accept-Ranges", "bytes");
        if (isNotBlank(rangeMeta.range())) {
            response.setStatus(HttpServletResponse.SC_PARTIAL_CONTENT);
            // 针对 bytes=27000- 的请求
            response.setHeader("Content-Range",
                    "bytes " + rangeMeta.pastLength() + "-" + rangeMeta.toLength() + "/" + rangeMeta.fileLength());
        }
        response.addHeader("Content-Disposition",
                "attachment; filename=" + fileName);
        response.setContentType("application/octet-stream");
        response.addHeader("Content-Length", String.valueOf(rangeMeta.contentLength()));
    }

    /**
     * 解析客户端请求的字节范围
     *
     * @param range      客户端请求的字节范围
     * @param fileLength 文件总大小
     * @return 解析后的字节范围
     */
    private static RangeMeta range(String range, long fileLength) {
        // 记录已下载文件大小
        long pastLength = 0L;
        // 记录客户端需要下载的字节段的最后一个字节偏移量（比如bytes=27000-39000，则这个值是为39000）
        long toLength = 0L;
        // 客户端请求的字节总量
        long contentLength = 0L;
        // 客户端请求的下载的文件块的开始字节
        if (isNotBlank(range)) {
            log.debug("request.getHeader(\"Range\") = " + range);
            Matcher matcher = PATTERN.matcher(range);
            if (matcher.find()) {
                pastLength = Integer.parseInt(matcher.group(1));
                String endStr = matcher.group(2);
                if (isNotBlank(endStr)) {
                    toLength = Integer.parseInt(endStr);
                    // 修正数据
                    if (toLength >= fileLength) {
                        toLength = fileLength - 1;
                    }
                } else {
                    toLength = fileLength - 1;
                }
            }
            // 客户端请求的是 1275856879-1275877358 之间的字节
            contentLength = toLength - pastLength + 1;
            if (pastLength == 0L) {
                // 是从开始下载
                log.debug("---------------是从开始进行下载！");
            }
        } else {
            // 客户端要求全文下载
            contentLength = fileLength;
            toLength = fileLength - 1;
            // 是普通下载
            log.debug("---------------是普通下载！");
        }
        return new RangeMeta(range, pastLength, toLength, contentLength, fileLength);
    }

    /**
     * 字节范围
     */
    private record RangeMeta(String range, long pastLength, long toLength, long contentLength, long fileLength) {
    }

    /**
     * 检查字符串是否不为空
     *
     * @param str 字符串
     * @return true/false
     */
    private static boolean isNotBlank(String str) {
        return str != null && !str.isBlank();
    }

    /**
     * 检查字符串是否为空
     *
     * @param str 字符串
     * @return true/false
     */
    private static boolean isBlank(String str) {
        return !isNotBlank(str);
    }

    /**
     * 检查文件
     *
     * @param file 文件
     */
    private static void checkFile(File file) {
        if (file == null) {
            throw new IllegalArgumentException("文件不能为空");
        }
        if (!file.exists()) {
            throw new RuntimeException("文件不存在");
        }
        if (!file.isFile()) {
            throw new RuntimeException("不是一个文件");
        }
        if (file.length() <= 0) {
            throw new RuntimeException("该文件是一个空文件");
        }
        if (!file.canRead()) {
            throw new RuntimeException("该文件没有读取权限");
        }
    }
}
