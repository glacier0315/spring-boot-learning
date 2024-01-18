package com.glacier.service;

import com.glacier.entity.Product;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.*;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.CountDownLatch;

/**
 * date 2024-01-18 11:36
 *
 * @author glacier
 * @version 1.0
 */
@DisplayName("商品测试")
@SpringBootTest
class ProductServiceTest {
    @Resource
    private ProductService productService;
    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @DisplayName("测试 删除")
    @Test
    void deleteById() {
        long id = 1L;
        Product product1 = productService.getById1(id);
        Product product2 = productService.getById1(id);
        System.out.println("product1:\t" + product1);
        System.out.println("product2:\t" + product2);
        productService.deleteById(id);
    }

    @Test
    void save() {
    }

    @Test
    void update() {
    }

    @DisplayName("测试 Cacheable 缓存")
    @Test
    void getById1() {
        long id = 1L;
        Product product1 = productService.getById1(id);
        Product product2 = productService.getById1(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试 Cacheable 无法缓存null")
    @Test
    void getById1_2() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> {
            long id = 1000000L;
            Product product1 = productService.getById1(id);
            Product product2 = productService.getById1(id);
            Assertions.assertNotNull(product1);
            Assertions.assertNotNull(product2);
            Assertions.assertEquals(product1.getName(), product2.getName());
        });
    }

    @DisplayName("测试 Cacheable 缓存")
    @Test
    void getById2() {
        long id = 1L;
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试 Cacheable 缓存，排除null")
    @Test
    void getById2_2() {
        long id = 1000000L;
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNull(product1);
        Assertions.assertNull(product2);
    }

    @DisplayName("测试 布隆过滤器")
    @Test
    void findById() {
        long id = 1L;
        Product product1 = productService.findById(id);
        Product product2 = productService.findById(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试 布隆过滤器,key不存在")
    @Test
    void findById_2() {
        long id = 1000000L;
        Product product1 = productService.findById(id);
        Product product2 = productService.findById(id);
        Assertions.assertNull(product1);
        Assertions.assertNull(product2);
    }

    @Test
    void findByName() {
    }

    @Test
    void findList() {
    }
}
