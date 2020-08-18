package com.glacier.modules.sys.dao;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


@SpringBootTest
public class UserRepositoryTest {

    @Resource
    private UserRepository userDao;

    @Test
    public void testSaveS() {
        this.userDao.test();
    }

}
