package com.glacier.common.core.security.provider;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.glacier.common.core.security.properties.JwtProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

/**
 * date 2021-07-14 17:22
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class JwtTokenProvider {
	private final static Logger LOGGER = LoggerFactory.getLogger(JwtTokenProvider.class);
	public static final String TOKEN_HEADER = "Authorization";
	public static final String TOKEN_PREFIX = "Bearer ";
	/**
	 * 用户名
	 */
	public static final String USERNAME = "username";
	/**
	 * 角色
	 */
	public static final String ROLES = "roles";
	
	private final JwtProperties jwtProperties;
	
	@Autowired
	public JwtTokenProvider(JwtProperties jwtProperties) {
		this.jwtProperties = jwtProperties;
	}
	
	/**
	 * 创建token
	 *
	 * @param username
	 * @param username
	 * @param rememberMe
	 * @return
	 */
	public String createToken(String username, List<String> roles, boolean rememberMe) {
		Calendar expireTime = Calendar.getInstance();
		expireTime.add(Calendar.MINUTE, rememberMe ? jwtProperties.getExpireTimeRemember() : jwtProperties.getExpireTime());
		try {
			return JWT.create()
					.withExpiresAt(expireTime.getTime())
					.withClaim(USERNAME, username)
					.withClaim(ROLES, roles)
					// 创建签名的算法实例
					.sign(Algorithm.HMAC256(jwtProperties.getSecret()));
		} catch (JWTCreationException jwtCreationException) {
			LOGGER.warn("Token create failed");
			return "";
		}
	}
	
	
	/**
	 * 验证token
	 *
	 * @param token
	 * @return
	 */
	public boolean verifyToken(String token) {
		try {
			// 构建JWT验证器，token合法同时pyload必须含有私有字段username且值一致
			// token过期也会验证失败
			// 验证token
			DecodedJWT decodedJwt = JWT.require(Algorithm.HMAC256(jwtProperties.getSecret()))
					.build()
					.verify(token);
			if (decodedJwt == null) {
				LOGGER.info("token无效, {}", token);
				return false;
			}
			boolean isExpired = decodedJwt.getExpiresAt() != null
					&& !decodedJwt.getExpiresAt().after(Calendar.getInstance().getTime());
			if (isExpired) {
				LOGGER.info("token已过期, {}", token);
				return false;
			}
			
			String username = decodedJwt
					.getClaim(USERNAME)
					.asString();
			return username != null && !username.isEmpty();
		} catch (JWTVerificationException jwtVerificationException) {
			LOGGER.warn("token " + token + "验证失败", jwtVerificationException);
			return false;
		}
	}
	
	
	/**
	 * 获取username
	 *
	 * @param token
	 * @return
	 */
	public String getUsername(String token) {
		return getDecodedJwt(token)
				.map(jwt ->
						jwt.getClaim(USERNAME)
								.asString())
				.orElse("");
	}
	
	/**
	 * 获取角色
	 *
	 * @param token
	 * @return
	 */
	public List<String> getRoles(String token) {
		return getDecodedJwt(token)
				.map(jwt ->
						jwt.getClaim(ROLES)
								.asList(String.class))
				.orElseGet(ArrayList::new);
	}
	
	/**
	 * 是否过期
	 *
	 * @param token
	 * @return
	 */
	public boolean isExpired(String token) {
		return getDecodedJwt(token)
				.map(jwt ->
						jwt.getExpiresAt() != null
								&& !jwt.getExpiresAt().after(Calendar.getInstance().getTime()))
				.orElse(false);
	}
	
	/**
	 * 从token中获取
	 *
	 * @param token
	 * @return
	 */
	private Optional<DecodedJWT> getDecodedJwt(String token) {
		try {
			// 因此获取载荷信息不需要密钥
			return Optional.of(JWT.decode(token));
		} catch (JWTDecodeException jwtDecodeException) {
			LOGGER.warn("提取身份时，token解码失败, token " + token, jwtDecodeException);
			return Optional.empty();
		}
	}
}
