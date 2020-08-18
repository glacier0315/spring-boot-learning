package com.glacier.core.document;

import com.glacier.core.document.ms.MsOfficeDocManager;
import com.glacier.utils.FileUtils;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.File;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/5/2 0002</pre>
 */
@Component("msOfficeDocConverter")
public class MsOfficeDocConverter implements Converter {

    @Autowired
    private MsOfficeDocManager msOfficeDocManager;

    private String[] words = {"doc", "docx"};
    private String[] excels = {"xls", "xlsx"};
    private String[] ppts = {"ppt"};

    @Override
    public void convert(String src, String des) {
        File file = new File(src);
        if (des == null || src.length() == 0 || des.length() == 0 || !file.exists()) {
            return;
        }
        FileUtils.mkParentDirs(des);
        Dispatch docs = this.msOfficeDocManager.getDoc();
        Dispatch doc = Dispatch.call(docs, "Open", src, true, false, true).toDispatch();
        Dispatch.call(doc, "ExportAsFixedFormat", des, 17);
        Dispatch.call(doc, "Close", new Variant(true));
    }
}
