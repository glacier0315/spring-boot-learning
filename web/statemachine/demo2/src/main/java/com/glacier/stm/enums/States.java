package com.glacier.stm.enums;

/**
 * date 2024-02-07 10:24
 * 订单状态
 *
 * @author glacier
 * @version 1.0
 */
public enum States {
    /**
     * 待支付
     */
    WAIT_PAYMENT,
    /**
     * 待发货
     */
    WAIT_DELIVER,
    /**
     * 待收货
     */
    WAIT_RECEIVE,
    /**
     * 完成
     */
    FINISH;
}
