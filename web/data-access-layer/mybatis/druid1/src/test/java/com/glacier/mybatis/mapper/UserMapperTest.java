package com.glacier.mybatis.mapper;

import com.glacier.mybatis.entity.User;
import jakarta.annotation.Resource;
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
 * date 2021-12-10 17:17
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserMapperTest {
    @Resource
    private UserMapper userMapper;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void deleteByPrimaryKey() {
        int update = userMapper.deleteByPrimaryKey("3d908373717c4539ba02011e2bfc2398");
        Assertions.assertEquals(1, update);
    }

    @Test
    void insert() {
        User user = User.builder()
                .id(UUID.randomUUID().toString().replace("-", ""))
                .username("zhangsan")
                .password("zhangsanpw")
                .birthday(LocalDate.of(1990, 10, 11))
                .build();

        int update = userMapper.insert(user);
        Assertions.assertEquals(1, update);
    }

    @Test
    void selectByPrimaryKey() {
        User user = userMapper.selectByPrimaryKey("1");
        Assertions.assertNotNull(user);
        Assertions.assertEquals("admin", user.getUsername());
    }

    @Test
    void selectAll() {
        List<User> users = userMapper.selectAll();
        Assertions.assertNotNull(users);
        Assertions.assertFalse(users.isEmpty());
    }

    @Test
    void updateByPrimaryKey() {
        User user = User.builder()
                .id("503ef063d6d24cb49adc3f3dee848bae")
                .username("zhangsan")
                .password("zhangsanpw")
                .birthday(LocalDate.of(1990, 10, 11))
                .build();
        int update = userMapper.updateByPrimaryKey(user);
        Assertions.assertEquals(1, update);
    }

    @Test
    void selectList() {
        List<User> users = userMapper.selectList(
                User.builder()
                        .status("1")
                        .build());
        Assertions.assertNotNull(users);
        Assertions.assertFalse(users.isEmpty());
    }

    @Test
    void selectOneByUsername() {
        User user = userMapper.selectOneByUsername("admin");
        Assertions.assertNotNull(user);
        Assertions.assertEquals("admin", user.getUsername());
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
        int insertCount = 0;
        long start = System.currentTimeMillis();
        for (User user : list) {
            insertCount += userMapper.insert(user);
        }
        long end = System.currentTimeMillis();
        System.out.println("耗时： " + (end - start) + " 毫秒");
        Assertions.assertEquals(size, insertCount);
    }
}
