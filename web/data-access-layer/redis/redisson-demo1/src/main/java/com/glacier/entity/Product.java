package com.glacier.entity;

import lombok.*;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * date 2024-01-16 12:21
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Product implements Serializable {
    @Serial
    private static final long serialVersionUID = -3113476611320794323L;
    /**
     * 商品id
     */
    private Long id;
    /**
     * 商品名称
     */
    private String name;

    /**
     * 商品编码
     */
    private String productSn;

    /**
     * 商品主图
     */
    private String pic;

    /**
     * 商品图集
     */
    private String photoAlbum;

    /**
     * 商品价格
     */
    private BigDecimal price;

    /**
     * 促销价格
     */
    private BigDecimal promotionPrice;

    /**
     * 促销开始时间
     */
    private LocalDateTime promotionStartTime;

    /**
     * 促销结束时间
     */
    private LocalDateTime promotionEndTime;

    /**
     * 副标题
     */
    private String subTitle;

    /**
     * 销量
     */
    private Integer sales;

    /**
     * 单位
     */
    private String unit;

    /**
     * 商品详情
     */
    private String detail;

    /**
     * 发布状态 0：发布 1：未发布
     */
    private Boolean publishStatus;

    /**
     * 新品状态 0：新品 1：非新品
     */
    private Boolean newStatus;

    /**
     * 推荐状态 0：推荐 1：非推荐
     */
    private Boolean recommandStatus;

    /**
     * 库存
     */
    private Integer stock;

    /**
     * 锁定库存
     */
    private Integer lockStock;

}
