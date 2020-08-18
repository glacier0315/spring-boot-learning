package com.glacier.core.document;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.ComThread;
import com.jacob.com.Dispatch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/5/3 0003</pre>
 */
public class MsOfficeTest {

    private static final Logger log = LoggerFactory.getLogger(MsOfficeTest.class);

    public static void main(String[] args) {
        ActiveXComponent word = null;
        Dispatch docs = null;
        log.info("MsOfficeManager初始化！");
        // 初始化
        ComThread.InitSTA();
        // 打开word应用程序
        word = new ActiveXComponent("Word.Application");
        // 设置word不可见
        word.setProperty("Visible", false);
        // 获得word中所有打开的文档,返回Documents对象
        docs = word.getProperty("Documents").toDispatch();


        String src = "D:\\cache\\zyjwspb.docx";
        String des = "D:\\cache\\" + System.currentTimeMillis() + ".pdf";
        Dispatch doc = Dispatch.call(docs, "Open", src, true, false, true).toDispatch();
        Dispatch.call(doc, "ExportAsFixedFormat", des, 17);
        Dispatch.call(doc, "Close");


        log.info("MsOfficeManager销毁！");
        if (word != null) {
            // 关闭word应用程序
            word.invoke("Quit");
        }
        ComThread.Release();
    }
}
