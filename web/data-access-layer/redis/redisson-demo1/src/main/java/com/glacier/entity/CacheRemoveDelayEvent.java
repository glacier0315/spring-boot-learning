package com.glacier.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;

/**
 * date 2024-01-26 15:14
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode
public class CacheRemoveDelayEvent implements Delayed, Serializable {

    @Serial
    private static final long serialVersionUID = 3677899434633369834L;
    private final String cacheName;
    private final String key;
    private final long delay;
    /**
     * 触发时间
     */
    private final long triggerTime;

    public CacheRemoveDelayEvent(String cacheName, String key, long delay) {
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
        CacheRemoveDelayEvent item = (CacheRemoveDelayEvent) o;
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
