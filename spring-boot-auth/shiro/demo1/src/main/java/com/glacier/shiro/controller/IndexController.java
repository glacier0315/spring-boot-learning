package com.glacier.shiro.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * date 2021-04-26 20:42
 *
 * @author glacier
 * @version 1.0
 */
@Controller
public class IndexController {
    
    /**
     * 登录页面
     *
     * @param model
     * @return
     */
    @GetMapping("/login")
    public String login() {
        if (SecurityUtils.getSubject()
                .isAuthenticated()) {
            return "redirect:/";
        }
        return "login";
    }
    
    /**
     * 登录页面
     *
     * @param username
     * @param password
     * @param model
     * @return
     */
    @PostMapping("login")
    public String login(String username, String password, Model model) {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            SecurityUtils.getSubject()
                    .login(token);
        } catch (AuthenticationException e) {
            if (e instanceof UnknownAccountException) {
                model.addAttribute("error", "用户不存在");
            } else if (e instanceof LockedAccountException) {
                model.addAttribute("error", "用户被禁用");
            } else if (e instanceof IncorrectCredentialsException) {
                model.addAttribute("error", "密码错误");
            } else {
                model.addAttribute("error", "用户认证失败");
            }
            return "/login";
        }
        return "redirect:/";
    }
    
    /**
     * 登录后可访问
     *
     * @return
     */
    @GetMapping("")
    public String index() {
        return "index";
    }
    
    /**
     * 退出登录
     */
    @GetMapping("logout")
    public String logout() {
        SecurityUtils.getSubject()
                .logout();
        return "redirect: /login";
    }
}
