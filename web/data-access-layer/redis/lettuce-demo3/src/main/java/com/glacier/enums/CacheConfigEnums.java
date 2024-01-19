package com.glacier.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.time.Duration;

/**
 * date 2024-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@Getter
@RequiredArgsConstructor
public enum CacheConfigEnums {

    /**
     * 【 延时队列 】
     **/
    R_BLOCKING_QUEUE("rBlockingQueue", Duration.ZERO),
    /**
     * 永久缓存,永不过期 ttl永久 = Duration.ZERO
     */
    PERPETUAL_CACHE("persistent_caching", Duration.ZERO),
    /**
     * 用户缓存，5分钟
     */
    USER_CACHE("user", Duration.ofMinutes(5)),
    /**
     * 商品缓存，10分钟
     */
    PRODUCT_CACHE("product", Duration.ofMinutes(10)),
    /**
     * 默认缓存 ，1天
     */
    DEFAULT_CACHE("default", Duration.ofDays(1)),
    ;
    /**
     * 缓存名
     */
    private final String cacheName;
    /**
     * 过期时间
     */
    private final Duration ttl;

    public static final String COMMON_CACHE_KEY = "cache:";
}
