package com.glacier.core.document.ms;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/5/2 0002</pre>
 */
@SpringBootTest
public class MsOfficeDocManagerTest {

    @Autowired
    private MsOfficeDocManager msOfficeDocManager;


    @Test
    public void initTest() {
        System.out.println("MsOfficeDocManagerTest.initTest");
        System.out.println(this.msOfficeDocManager);
    }
}
