package com.glacier;

import com.glacier.domain.Inventor;
import com.glacier.domain.PlaceOfBirth;
import org.junit.jupiter.api.*;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.common.TemplateParserContext;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.SimpleEvaluationContext;
import org.springframework.expression.spel.support.StandardEvaluationContext;

import java.time.LocalDate;
import java.util.Arrays;

/**
 * date 2024-01-19 17:11
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("测试 SpEL")
class SpELTest {

    private static final ExpressionParser parser = new SpelExpressionParser();

    @BeforeAll
    static void beforeAll() {

    }

    @AfterAll
    static void afterAll() {

    }

    @BeforeEach
    void setUp() {

    }

    @AfterEach
    void tearDown() {

    }

    @DisplayName("文字表达式")
    @Test
    void test1() {
        // 获取字符串 "Hello World"
        String helloWorld = (String) parser.parseExpression("'Hello World'").getValue();
        System.out.println(helloWorld);

        // double类型 6.0221415E23
        double avogadrosNumber = (Double) parser.parseExpression("6.0221415E+23").getValue();
        System.out.println(avogadrosNumber);

        // int类型 2147483647
        int maxValue = (Integer) parser.parseExpression("0x7FFFFFFF").getValue();
        System.out.println(maxValue);

        // true
        boolean trueValue = (Boolean) parser.parseExpression("true").getValue();
        System.out.println(trueValue);

        // null
        Object nullValue = parser.parseExpression("null").getValue();
        System.out.println(nullValue);
    }

    @DisplayName("字符串")
    @Test
    void test2() {
        String message = (String) parser.parseExpression("'Hello World'").getValue();
        System.out.println(message);

        message = (String) parser.parseExpression("'Hello World'.concat('!')").getValue();
        System.out.println(message);

        byte[] bytes = (byte[]) parser.parseExpression("'Hello World'.bytes").getValue();
        System.out.println(Arrays.toString(bytes));

        Integer length = (Integer) parser.parseExpression("'Hello World'.bytes.length").getValue();
        System.out.println(length);

        message = parser.parseExpression("new String('hello world').toUpperCase()").getValue(String.class);
        System.out.println(message);
    }

    @DisplayName("属性操作")
    @Test
    void test3() {
        // 注意！属性名的第一个字母不区分大小写。 birthdate.year等效于Birthdate.Year
        // 取出Inventor 中，birthdate属性的year属性
        Inventor zhangsan = Inventor.builder()
                .name("张三")
                .birthdate(LocalDate.of(2023, 1, 1))
                .nationality("中国")
                .build();
        // 定义StandardEvaluationContext ，传入一个操作对象
        StandardEvaluationContext zhangsanContext = new StandardEvaluationContext(zhangsan);
        int year = (Integer) parser.parseExpression("birthdate.year + 1900").getValue(zhangsanContext);
        System.out.println(year); // 2023

        //取出Inventor的placeOfBirth的city属性
        PlaceOfBirth placeOfBirth = new PlaceOfBirth("长沙", "中国");
        zhangsan.setPlaceOfBirth(placeOfBirth);
        String city = (String) parser.parseExpression("placeOfBirth.City").getValue(zhangsanContext);
        System.out.println(city); // 长沙
    }

    @DisplayName("表达式模板")
    @Test
    void test4() {
        // 通常使用#{}作为模板，与字符串拼接起来
        String randomPhrase = parser.parseExpression(
                "random number is #{T(java.lang.Math).random()}",
                new TemplateParserContext()).getValue(String.class);
        System.out.println(randomPhrase);

        EvaluationContext context = SimpleEvaluationContext.forReadWriteDataBinding().build();
        context.setVariable("username", "Mike");

        String value = parser.parseExpression("'key_' + #username")
                .getValue(context, String.class);
        System.out.println(value);
    }

    @DisplayName("案例2")
    @Test
    void test5() {

    }
}
