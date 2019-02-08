package com.sy.shop.domain;

import lombok.Data;

import java.util.Date;

@Data
public class TbUserAddress {

    private Long id;
    private String receiverName;
    private String receiverPhone;
    private String receiverMobile;
    private String receiverState;
    private String receiverCity;
    private String receiverDistrict;
    private String receiverAddress;
    private String receiverZip;
    private Long userId;
    private Integer status;
    private Date created;
    private Date updated;

}
