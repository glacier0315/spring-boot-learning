package com.glacier.controller;

import com.glacier.entity.OauthClientDetails;
import com.glacier.entity.User;
import com.glacier.entity.vo.CustomUserClientList;
import com.glacier.service.OauthClientDetailsService;
import com.glacier.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 21:41
 */
@RestController
public class IndexControlle {

    private final OauthClientDetailsService clientDetailsService;
    private final UserService userService;

    @Autowired
    public IndexControlle(OauthClientDetailsService clientDetailsService, UserService userService) {
        this.clientDetailsService = clientDetailsService;
        this.userService = userService;
    }

    @GetMapping(value = "/clients")
    public List<OauthClientDetails> clients() {
        return this.clientDetailsService.findAll();
    }

    @GetMapping(value = "/users")
    public List<User> users() {
        return this.userService.findAll();
    }

    @GetMapping(value = "/list")
    public CustomUserClientList list() {
        List<User> userList = this.userService.findAll();
        List<OauthClientDetails> oauthClientDetailsList = this.clientDetailsService.findAll();
        return new CustomUserClientList(userList, oauthClientDetailsList);
    }
}
