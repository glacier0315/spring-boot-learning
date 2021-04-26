package com.glacier.shiro.config;

import com.glacier.shiro.realm.UserRealm;
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

//    @Bean
//    public Realm jdbcRealm(DataSource dataSource) {
//        JdbcRealm realm = new JdbcRealm();
//        realm.setDataSource(dataSource);
//        // 基于权限的资源访问默认是关闭的
//        realm.setPermissionsLookupEnabled(true);
//        return realm;
//    }
    
    @Bean
    public Realm userRealm(UserService userService) {
        return new UserRealm(userService);
    }
    
    @Bean
    public DefaultWebSecurityManager securityManager(Realm userRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(userRealm);
        return securityManager;
    }
    
    @Bean
    public ShiroFilterChainDefinition shiroFilterChainDefinition() {
        DefaultShiroFilterChainDefinition chainDefinition = new DefaultShiroFilterChainDefinition();
        // logged in anno
        chainDefinition.addPathDefinition("/login", "anon");
        chainDefinition.addPathDefinition("/js/**", "anon");
        chainDefinition.addPathDefinition("/css/**", "anon");
        chainDefinition.addPathDefinition("/images/**", "anon");
        // logged in users with the 'admin' role
        chainDefinition.addPathDefinition("/admin/**", "authc, roles[admin]");
        
        // logged in users with the 'document:read' permission
        chainDefinition.addPathDefinition("/docs/**", "authc, perms[document:read]");
        
        // all other paths require a logged in user
        chainDefinition.addPathDefinition("/**", "authc");
        return chainDefinition;
    }
}
