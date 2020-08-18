package com.glacier.controller;

import com.glacier.domain.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@Slf4j
@RestController
@RequestMapping("/user")
public class UserController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public List<User> index(Model model) {
        log.info("测试freemarker");
        List<User> list = new ArrayList<>();
        User user = null;
        for (int i = 0; i < 50; i++) {
            user = new User("id_" + i, "name_" + i, "pw_" + i, i % 2);
            list.add(user);
        }
        return list;
    }


}
