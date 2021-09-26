package com.glacier.shiro.config;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import com.glacier.shiro.realm.CertRealm;
import com.glacier.shiro.realm.UserRealm;
import com.glacier.shiro.service.CertService;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authc.pam.FirstSuccessfulStrategy;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;

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
	
	/**
	 * 凭证匹配器（由于我们的密码校验交给Shiro的SimpleAuthenticationInfo进行处理了）
	 *
	 * @return
	 */
	@Bean
	public HashedCredentialsMatcher hashedCredentialsMatcherMd5() {
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		// 散列算法:这里使用MD5算法;
		hashedCredentialsMatcher.setHashAlgorithmName("MD5");
		// 散列的次数，比如散列两次，相当于 md5(md5(""));
		hashedCredentialsMatcher.setHashIterations(1024);
		return hashedCredentialsMatcher;
	}
	
	/**
	 * 配置 凭证匹配器 ,加密算法为 SHA1
	 */
	@Bean
	public HashedCredentialsMatcher hashedCredentialsMatcherSha() {
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		// 设置加密算法
		hashedCredentialsMatcher.setHashAlgorithmName("SHA1");
		// 设置加密次数，比如两次，相当于SHA1(SHA1())
		hashedCredentialsMatcher.setHashIterations(1024);
		return hashedCredentialsMatcher;
	}
	
	@Bean
	public Realm userRealm(UserService userService) {
		UserRealm userRealm = new UserRealm(userService);
		userRealm.setCredentialsMatcher(hashedCredentialsMatcherMd5());
		return userRealm;
	}
	
	@Bean
	public Realm certRealm(CertService certService) {
		CertRealm certRealm = new CertRealm(certService);
		certRealm.setCredentialsMatcher(hashedCredentialsMatcherSha());
		return certRealm;
	}
	
	@Bean
	public DefaultWebSecurityManager securityManager(
			@Qualifier("userRealm") Realm userRealm,
			@Qualifier("certRealm") Realm certRealm) {
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		securityManager.setRealms(Arrays.asList(userRealm, certRealm));
		return securityManager;
	}
	
	/**
	 * 认证策略
	 *
	 * @return
	 */
	@Bean
	public ModularRealmAuthenticator modularRealmAuthenticator() {
		ModularRealmAuthenticator realmAuthenticator = new ModularRealmAuthenticator();
		realmAuthenticator.setAuthenticationStrategy(new FirstSuccessfulStrategy());
		return realmAuthenticator;
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
	
	/**
	 * 配置ShiroDialect，用于thymeleaf和shiro标签配合使用
	 */
	@Bean
	public ShiroDialect getShiroDialect(){
		return new ShiroDialect();
	}
}
