package com.glacier.utils;

import java.io.File;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/5/2 0002</pre>
 */
public class FileUtils {

    /**
     * 获取文件后缀名
     *
     * @param path
     * @return
     */
    public static String suffix(String path) {
        String suffix = "";
        if (path != null && path.length() > 0) {
            int i = path.lastIndexOf(".");
            if (i > 0 && i < path.length()) {
                suffix = path.substring(i + 1, path.length());
            }
        }
        return suffix;
    }

    /**
     * 得到前缀
     *
     * @param path
     * @return
     */
    public static String prefix(String path) {
        String prefix = "";
        if (path != null && path.length() > 0) {
            prefix = path;
            int i = path.lastIndexOf(".");
            if (i > 0) {
                prefix = path.substring(0, i);
            }
        }
        return prefix;
    }

    /**
     * 创建父目录
     *
     * @param path
     */
    public static void mkParentDirs(String path) {
        File file = new File(path);
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
    }
}
