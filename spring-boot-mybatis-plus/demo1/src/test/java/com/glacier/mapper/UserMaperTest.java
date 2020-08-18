package com.glacier.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.glacier.MybatisPlusDemo1Application;
import com.glacier.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @description
 * @date 2020-01-28 08:46
 */

@SpringBootTest(classes = {MybatisPlusDemo1Application.class})
public class UserMaperTest {

    @Resource
    private UserMapper userMapper;

    @Test
    public void testSelectList() {
        List<User> users = this.userMapper.selectList(null);
        System.out.println(users);
    }

    @Test
    public void testSelectPage() {
        Page<User> page = this.userMapper.selectPage(new Page<User>(2, 1), null);
        System.out.println(page.getRecords());
    }
}
