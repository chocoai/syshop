package com.sy.shop.web.api.web.dto;

import lombok.Data;

import java.util.Date;
@Data
public class TbOrderDTO {
    private String orderId;
    private String payment;
    private String paymentType;
    private Integer status;
    private Date createTime;
    private Long userId;
    private Integer buyerRate;
}
