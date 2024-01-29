package com.glacier.config;

import com.glacier.domain.AppInfo;
import com.glacier.domain.CatInfo;
import com.glacier.domain.CowInfo;
import com.glacier.domain.DogInfo;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;

/**
 * date 2022-01-19 15:55
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("配置文件读取")
@SpringBootTest
class AppInfoTest {

    @Resource
    private AppInfo appInfo;
    @Resource
    private CatInfo catInfo;
    @Resource
    private DogInfo dogInfo;
    @Resource
    private CowInfo cowInfo;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void test1() {
        System.out.println("name1\t" + appInfo.getName1());
        System.out.println("name2\t" + appInfo.getName2());
        System.out.println("name3\t" + appInfo.getName3());
        System.out.println("name4\t" + appInfo.getName4());
        System.out.println("name5\t" + appInfo.getName5());
        System.out.println("name6\t" + appInfo.getName6());
        System.out.println("name7\t" + appInfo.getName7());
        System.out.println("name8\t" + appInfo.getName8());
        System.out.println("property0\t" + appInfo.getProperty0());
        System.out.println("property1\t" + appInfo.getProperty1());
        System.out.println("property2\t" + appInfo.getProperty2());
        System.out.println("property3\t" + appInfo.getProperty3());
        System.out.println("property4\t" + appInfo.getProperty4());
        System.out.println("property5\t" + appInfo.getProperty5());
        System.out.println("property6\t" + appInfo.getProperty6());
        System.out.println("property7\t" + appInfo.getProperty7());
        System.out.println("property8\t" + Arrays.toString(appInfo.getProperty8()));
        System.out.println("property9\t" + appInfo.getProperty9());
        System.out.println("property10\t" + appInfo.getProperty10());
        System.out.println("property11\t" + appInfo.getProperty11());
        System.out.println("property12\t" + appInfo.getProperty12());
        System.out.println("property13\t" + appInfo.getProperty13());
        System.out.println("property14\t" + appInfo.getProperty14());
    }

    @Test
    void test2() {
        System.out.println(catInfo);
    }

    @Test
    void test3() {
        System.out.println(dogInfo );
    }

    @Test
    void test4() {
        System.out.println(cowInfo);
    }
}
