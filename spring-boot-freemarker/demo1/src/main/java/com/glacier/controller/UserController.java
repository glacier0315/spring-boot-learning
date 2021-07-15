package com.glacier.controller;

import com.glacier.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger log = LoggerFactory.getLogger(UserController.class);

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model) {
        log.info("测试freemarker");
        List<User> list = new ArrayList<>();
        User user = null;
        for (int i = 0; i < 50; i++) {
            user = new User("id_" + i, "name_" + i, "pw_" + i, i % 2);
            list.add(user);
        }
        model.addAttribute("users", list);
        String[] gnzy = {"我是1", "我是2", "我是3", "我是4"};
        model.addAttribute("gnzy", gnzy);
        return "user/list";
    }


}
