package com.glacier.stm.service;

import com.glacier.stm.entity.Order;

import java.util.Map;

/**
 * date 2024-02-07 10:33
 *
 * @author glacier
 * @version 1.0
 */
public interface OrderService {
    Order create(long id);

    Order pay(long id);

    Order deliver(long id);

    Order receive(long id);

    Map<Long, Order> getOrders();
}
