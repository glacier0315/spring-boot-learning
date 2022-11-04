package com.glacier.shiro.config;

import com.glacier.shiro.realm.UserAuthorizingRealm;
import com.glacier.shiro.service.PermissionService;
import com.glacier.shiro.service.RoleService;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * date 2021-04-26 20:51
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class ShiroConfig {
    
    @Bean
    protected CacheManager cacheManager() {
        return new MemoryConstrainedCacheManager();
    }
    
    @Bean
    public Realm userAuthorizingRealm(
            UserService userService,
            RoleService roleService,
            PermissionService permissionService) {
        return new UserAuthorizingRealm(userService, roleService, permissionService);
    }
    
    @Bean
    public DefaultWebSecurityManager securityManager(Realm userAuthorizingRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(userAuthorizingRealm);
        return securityManager;
    }
    
    @Bean
    public ShiroFilterChainDefinition shiroFilterChainDefinition() {
        DefaultShiroFilterChainDefinition chainDefinition = new DefaultShiroFilterChainDefinition();
        
        // 登录
        chainDefinition.addPathDefinition("/login", "anon");
        // 静态资源
        chainDefinition.addPathDefinition("/js/**", "anon");
        chainDefinition.addPathDefinition("/css/**", "anon");
        chainDefinition.addPathDefinition("/images/**", "anon");
        chainDefinition.addPathDefinition("/static/**", "anon");
        // 错误页面
        chainDefinition.addPathDefinition("/error", "anon");
        // 退出
        chainDefinition.addPathDefinition("/logout", "logout");
        // logged in users with the 'admin' role
        chainDefinition.addPathDefinition("/admin/**", "authc, roles[admin]");
        
        // logged in users with the 'document:read' permission
        chainDefinition.addPathDefinition("/docs/**", "authc, perms[document:read]");
        
        // all other paths require a logged in user
        chainDefinition.addPathDefinition("/**", "authc");
        return chainDefinition;
    }
}
