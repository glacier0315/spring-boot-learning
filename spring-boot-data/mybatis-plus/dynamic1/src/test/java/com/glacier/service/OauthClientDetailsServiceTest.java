package com.glacier.service;

import com.glacier.MybatisPlusDynamic1Application;
import com.glacier.entity.OauthClientDetails;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 20:45
 */

@SpringBootTest(classes = {MybatisPlusDynamic1Application.class})
public class OauthClientDetailsServiceTest {
    @Autowired
    private OauthClientDetailsService oauthClientDetailsService;

    @Test
    public void findAll() {
        List<OauthClientDetails> detailsList = this.oauthClientDetailsService.findAll();
        if (detailsList != null && !detailsList.isEmpty()) {
            detailsList.forEach(System.out::println);
        } else {
            System.out.println("无数据！");
        }
    }
}
