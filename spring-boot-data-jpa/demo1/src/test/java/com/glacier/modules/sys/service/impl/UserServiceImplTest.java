package com.glacier.modules.sys.service.impl;

import com.glacier.modules.sys.dao.UserRepository;
import com.glacier.modules.sys.domain.User;
import com.glacier.modules.sys.service.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017-05-22 23:20</pre>
 */
@SpringBootTest
public class UserServiceImplTest {
    @Mock
    UserRepository userRepository;
    @Autowired
    UserService userService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testDelete() throws Exception {
        this.userService.delete(new User());
    }

    @Test
    public void testDeleteById() throws Exception {
        this.userService.deleteById("id");
    }

    @Test
    public void testFindAll() throws Exception {
        List<User> result = this.userService.findAll();
        assertEquals(Collections.singletonList(new User()), result);
    }

    @Test
    public void testFindOne() throws Exception {
        User result = this.userService.findOne("id");
        assertEquals(new User(), result);
    }

    @Test
    public void testSave() throws Exception {
        User result = this.userService.save(new User());
        assertEquals(new User(), result);
    }

    @Test
    public void testSaveOrUpdate() throws Exception {
        this.userService.saveOrUpdate(new User());
    }

    @Test
    public void testUpdate() throws Exception {
        this.userService.update(new User());
    }

    @Test
    public void testUpdateUserPassWord() throws Exception {
        this.userService.updateUserPassWord("passWord", "id");
    }
}
