package com.glacier.core.document.ms;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.ComThread;
import com.jacob.com.Dispatch;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/5/2 0002</pre>
 */

@Component
public class MsOfficeDocManager {

    private static final Logger log = LoggerFactory.getLogger(MsOfficeDocManager.class);

    private static final int wdFormatPDF = 17;
    private static final int xlTypePDF = 0;
    private static final int ppSaveAsPDF = 32;


    private ActiveXComponent word = null;
    private ActiveXComponent excel = null;
    private ActiveXComponent ppts = null;
    private Dispatch doc = null;
    private Dispatch xls = null;
    private Dispatch ppt = null;

    @PostConstruct
    public void init() {
        log.info("MsOfficeManager初始化！");
        // 初始化
        ComThread.InitSTA();
        // 打开word应用程序
        word = new ActiveXComponent("Word.Application");
        // 设置word不可见
        word.setProperty("Visible", false);
        // 获得word中所有打开的文档,返回Documents对象
        doc = word.getProperty("Documents").toDispatch();
    }

    @PreDestroy
    public void destroy() {
        log.info("MsOfficeManager销毁！");
        // 关闭word应用程序
        word.invoke("Quit");
        ComThread.Release();
        log.info("MsOfficeManager销毁完成！");
    }

    public Dispatch getDoc() {
        return doc;
    }

    public Dispatch getXls() {
        return xls;
    }

    public Dispatch getPpt() {
        return ppt;
    }

    @Override
    public String toString() {
        return "MsOfficeManager{" +
                "word=" + word +
                ", excel=" + excel +
                ", ppts=" + ppts +
                ", doc=" + doc +
                ", xls=" + xls +
                ", ppt=" + ppt +
                '}';
    }
}
