package com.glacier.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.glacier.entity.Product;
import jakarta.annotation.Resource;
import lombok.SneakyThrows;
import org.junit.jupiter.api.*;
import org.redisson.api.RBucket;
import org.redisson.api.RMapCache;
import org.redisson.api.RedissonClient;
import org.redisson.codec.JsonJacksonCodec;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.security.SecureRandom;

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
    private RedissonClient redissonClient;
    @Resource
    private ProductService productService;
    @Resource
    private ThreadPoolTaskExecutor taskExecutor;
    @Resource
    private ObjectMapper objectMapper;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {

    }

    @DisplayName("测试 删除")
    @RepeatedTest(1)
    void deleteById() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        productService.getById1(id);
        productService.deleteById(id);
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    void save() {
    }

    @Test
    void update() {
    }

    /**
     * 查询结果不存在时，抛异常
     */
    @DisplayName("测试(Cacheable)查询结果存在")
    @RepeatedTest(10)
    void getById1() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        Product product1 = productService.getById1(id);
        Product product2 = productService.getById1(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试(Cacheable)查询结果不存在")
//    @RepeatedTest(10)
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

    @DisplayName("测试(Cacheable unless)查询结果存在")
    @RepeatedTest(10)
    void getById2() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试(Cacheable unless)查询结果不存在")
    @RepeatedTest(10)
    void getById2_2() {
        long id = 1000000L;
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNull(product1);
        Assertions.assertNull(product2);
    }

    @DisplayName("测试 布隆过滤器,key存在")
    @RepeatedTest(10)
    void findById() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        Product product1 = productService.findById(id);
        Product product2 = productService.findById(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
    }

    @DisplayName("测试 布隆过滤器,key不存在")
    @RepeatedTest(10)
    void findById_2() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L) + 1000000L;
        Product product1 = productService.findById(id);
        Assertions.assertNull(product1);
    }

    @Test
    void findByName() {

    }

    @Test
    void findList() {
    }

    @DisplayName("测试 Cacheable 和 redisson 混用1")
    @RepeatedTest(10)
    void test1() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
        System.out.println(product1);

        RMapCache<String, Product> mapCache = redissonClient.getMapCache("product");
        Product product3 = mapCache.get("id_" + id);
        Assertions.assertNotNull(product3);
        Assertions.assertEquals(product1.getName(), product3.getName());
        System.out.println(product3);
    }

    @DisplayName("测试 Cacheable 和 redisson 混用2")
    @RepeatedTest(1)
    void test2() {
        SecureRandom random = new SecureRandom();
        long id = random.nextLong(10L);
        Product product1 = productService.getById2(id);
        Product product2 = productService.getById2(id);
        Assertions.assertNotNull(product1);
        Assertions.assertNotNull(product2);
        Assertions.assertEquals(product1.getName(), product2.getName());
        System.out.println(product1);

        RBucket<Object> bucket = redissonClient.getBucket("product");
        System.out.println(bucket.get());

        System.out.println(redissonClient.getBuckets());
    }
}
