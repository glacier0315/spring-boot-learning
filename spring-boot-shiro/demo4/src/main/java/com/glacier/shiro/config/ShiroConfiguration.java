package com.glacier.shiro.config;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import com.glacier.shiro.authc.ShiroAdvisor;
import com.glacier.shiro.authc.cache.RedisCacheManager;
import com.glacier.shiro.authc.session.RedisCachingSessionDAO;
import com.glacier.shiro.authc.session.SessionManager;
import com.glacier.shiro.realm.CertRealm;
import com.glacier.shiro.realm.UserRealm;
import com.glacier.shiro.service.CertService;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authc.pam.FirstSuccessfulStrategy;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.Arrays;

/**
 * date 2021-04-26 20:51
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class ShiroConfiguration {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ShiroConfiguration.class);
	
	/**
	 * 凭证匹配器（由于我们的密码校验交给Shiro的SimpleAuthenticationInfo进行处理了）
	 *
	 * @return
	 */
	@Bean
	HashedCredentialsMatcher hashedCredentialsMatcherMd5() {
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
	HashedCredentialsMatcher hashedCredentialsMatcherSha() {
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		// 设置加密算法
		hashedCredentialsMatcher.setHashAlgorithmName("SHA1");
		// 设置加密次数，比如两次，相当于SHA1(SHA1())
		hashedCredentialsMatcher.setHashIterations(1024);
		return hashedCredentialsMatcher;
	}
	
	@Bean
	Realm userRealm(UserService userService) {
		UserRealm userRealm = new UserRealm(userService);
		userRealm.setCredentialsMatcher(hashedCredentialsMatcherMd5());
		return userRealm;
	}
	
	@Bean
	Realm certRealm(CertService certService) {
		CertRealm certRealm = new CertRealm(certService);
		certRealm.setCredentialsMatcher(hashedCredentialsMatcherSha());
		return certRealm;
	}
	
	@Bean
	DefaultWebSecurityManager securityManager(
			SessionManager sessionManager,
			@Qualifier("userRealm") Realm userRealm,
			@Qualifier("certRealm") Realm certRealm) {
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		securityManager.setRealms(Arrays.asList(userRealm, certRealm));
		securityManager.setSessionManager(sessionManager);
		return securityManager;
	}
	
	/**
	 * 自定义系统缓存管理器
	 *
	 * @return
	 */
	@Bean
	CacheManager jedisCacheManager(RedisTemplate<Object, Object> redisTemplate) {
		RedisCacheManager redisCacheManager = new RedisCacheManager(redisTemplate);
		LOGGER.info("实例化 shiroCacheManager {}，参数 redisTemplate {}", redisCacheManager, redisTemplate);
		return redisCacheManager;
	}
	
	@Bean
	SessionDAO sessionDAO(CacheManager jedisCacheManager){
		CachingSessionDAO sessionDAO = new RedisCachingSessionDAO();
		sessionDAO.setCacheManager(jedisCacheManager);
		sessionDAO.setActiveSessionsCacheName("activeSessionsCache");
		return sessionDAO;
	}
	
	//@Bean
	//SessionDAO sessionDAO(){
	//	return new MemorySessionDAO();
	//}
	
	//@Bean
	//SessionDAO sessionDAO(){
	//	return new EnterpriseCacheSessionDAO();
	//}
	
	/**
	 * 自定义会话管理配置
	 *
	 * @param sessionDAO
	 * @return
	 */
	@Bean
	SessionManager sessionManager(SessionDAO sessionDAO) {
		SessionManager sessionManager = new SessionManager();
		sessionManager.setSessionDAO(sessionDAO);
		//  会话超时时间，单位：毫秒
		sessionManager.setGlobalSessionTimeout(1800000);
		//
		sessionManager.setSessionValidationSchedulerEnabled(true);
		// 定时清理失效会话, 清理用户直接关闭浏览器造成的孤立会话
		sessionManager.setSessionValidationInterval(120000);
		//
		sessionManager.setSessionIdCookieEnabled(true);
		//  指定本系统SESSIONID, 默认为: JSESSIONID 问题: 与SERVLET容器名冲突, 如JETTY, TOMCAT 等默认JSESSIONID,
		//	当跳出SHIRO SERVLET时如ERROR-PAGE容器会为JSESSIONID重新分配值导致登录会话丢失!
		sessionManager.setSessionIdCookie(new SimpleCookie("jeesite.session.id"));
		return sessionManager;
	}
	
	/**
	 * 认证策略
	 *
	 * @return
	 */
	@Bean
	ModularRealmAuthenticator modularRealmAuthenticator() {
		ModularRealmAuthenticator realmAuthenticator = new ModularRealmAuthenticator();
		realmAuthenticator.setAuthenticationStrategy(new FirstSuccessfulStrategy());
		return realmAuthenticator;
	}
	
	@Bean
	ShiroFilterChainDefinition shiroFilterChainDefinition() {
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
	ShiroDialect getShiroDialect(){
		return new ShiroDialect();
	}
	
	/**
	 * 保证实现了Shiro内部lifecycle函数的bean执行
	 *
	 * @return
	 */
	@Bean
	LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
		return new LifecycleBeanPostProcessor();
	}
	
	/**
	 * 自定义，添加扩展
	 *
	 * @param securityManager
	 * @return
	 */
	@Bean
	ShiroAdvisor shiroAdvisor(SecurityManager securityManager) {
		ShiroAdvisor shiroAdvisor = new ShiroAdvisor();
		shiroAdvisor.setSecurityManager(securityManager);
		return shiroAdvisor;
	}

	/**
	 * AOP式方法级权限检查
	 *
	 * @return
	 */
	@Bean
	DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
		DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
		proxyCreator.setProxyTargetClass(true);
		return proxyCreator;
	}
}
