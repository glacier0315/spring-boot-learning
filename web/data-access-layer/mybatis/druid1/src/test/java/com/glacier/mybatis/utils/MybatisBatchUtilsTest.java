package com.glacier.mybatis.utils;

import com.glacier.mybatis.entity.User;
import com.glacier.mybatis.mapper.UserMapper;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * date 2023-01-26 17:29
 *
 * @author glacier
 * @version 1.0.0
 */
@SpringBootTest
class MybatisBatchUtilsTest {
    @Autowired
    private MybatisBatchUtils mybatisBatchUtils;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void batchUpdateOrInsert() {
        int size = 200000;
        List<User> list = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            User user = User.builder()
                    .id(UUID.randomUUID().toString().replace("-", ""))
                    .username("zhangsan_" + i)
                    .password("zhangsanpw_" + i)
                    .birthday(LocalDate.of(1990, 10, 11))
                    .build();

            list.add(user);
        }
        long start = System.currentTimeMillis();
        int insertCount = mybatisBatchUtils.batchUpdateOrInsert(
                list, UserMapper.class, (user, mapper) -> mapper.insert(user));
        long end = System.currentTimeMillis();
        System.out.println("耗时： " + (end - start) + " 毫秒");
        Assertions.assertEquals(size, insertCount);
        // 耗时： 352212 毫秒
    }
}
