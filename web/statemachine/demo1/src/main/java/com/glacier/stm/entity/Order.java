package com.glacier.stm.entity;

import com.glacier.stm.enums.OrderStatusEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * date 2024-02-07 10:28
 * 模拟订单类
 * @author glacier
 * @version 1.0
 */
@Data
@Accessors(chain = true)
@EqualsAndHashCode
@ToString
public class Order implements Serializable {
    private Long orderId;
    private OrderStatusEnum orderStatus;
}
