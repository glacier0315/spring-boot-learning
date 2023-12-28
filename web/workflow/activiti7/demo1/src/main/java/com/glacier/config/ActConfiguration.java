package com.glacier.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * date 2021-10-02 12:18
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class ActConfiguration {
	private static final Logger LOGGER = LoggerFactory.getLogger(ActConfiguration.class);
	
	@Bean
	public UserDetailsService userDetailsService() {
		InMemoryUserDetailsManager inMemoryUserDetailsManager = new InMemoryUserDetailsManager();
        /*
            几个默认账号
            账号，密码，权限
            需要配置了一个ROLE_ACTIVITI_USER这个角色才可以进行Activiti官方API调用
         */
		String[][] usersGroupsAndRoles = {
				{"salaboy", "password", "ROLE_ACTIVITI_USER", "GROUP_activitiTeam"},
				{"ryandawsonuk", "password", "ROLE_ACTIVITI_USER", "GROUP_activitiTeam"},
				{"erdemedeiros", "password", "ROLE_ACTIVITI_USER", "GROUP_activitiTeam"},
				{"other", "password", "ROLE_ACTIVITI_USER", "GROUP_otherTeam"},
				{"admin", "password", "ROLE_ACTIVITI_ADMIN", "ROLE_ACTIVITI_USER", "GROUP_activitiTeam"},
		};
		
		for (String[] user : usersGroupsAndRoles) {
			List<String> authoritiesStrings = Arrays.asList(Arrays.copyOfRange(user, 2, user.length));
			LOGGER.info("> Registering new user: {} with the following Authorities[{}]", user[0], authoritiesStrings);
			inMemoryUserDetailsManager.createUser(
					new User(user[0],
							passwordEncoder().encode(user[1]),
							authoritiesStrings.stream()
									.map(SimpleGrantedAuthority::new)
									.collect(Collectors.toList())));
		}
		return inMemoryUserDetailsManager;
	}
	
	/**
	 * 密码工具类
	 *
	 * @return
	 */
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
