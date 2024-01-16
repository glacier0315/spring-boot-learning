package com.glacier.service;

/**
 * date 2024-01-16 22:04
 *
 * @author glacier
 * @version 1.0
 */
public interface StockService {
    void addStock(String key, long count);

    void addSyncStock1(String key, long count);
    void addSyncStock2(String key, long count);
    void addSyncStock3(String key, long count);

    long getStock(String key);
}
