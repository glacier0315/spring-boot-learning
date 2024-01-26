package com.glacier.cache;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-26 16:03
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode
public class CacheDelayTrigger implements Delayed, Serializable {
    @Serial
    private static final long serialVersionUID = 2784178165458759519L;
    private final CacheOperation type;
    private final String cacheName;
    private final Object key;
    private final long delay;
    /**
     * 触发时间
     */
    private final long triggerTime;

    public CacheDelayTrigger(CacheOperation type, String cacheName, long delay) {
        this(type, cacheName, null, delay);
    }

    public CacheDelayTrigger(CacheOperation type, String cacheName, Object key, long delay) {
        this.type = type;
        this.cacheName = cacheName;
        this.key = key;
        this.delay = delay;
        this.triggerTime = System.currentTimeMillis() + delay;
    }

    @Override
    public long getDelay(TimeUnit unit) {
        return unit.convert(triggerTime - System.currentTimeMillis(), unit);
    }

    @Override
    public int compareTo(Delayed o) {
        CacheDelayTrigger item = (CacheDelayTrigger) o;
        long diff = this.triggerTime - item.triggerTime;
        if (diff > 0) {
            return 1;
        }
        if (diff < 0) {
            return -1;
        }
        return 0;
    }
}
