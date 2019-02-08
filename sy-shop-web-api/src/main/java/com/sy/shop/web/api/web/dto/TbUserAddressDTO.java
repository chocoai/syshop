package com.sy.shop.web.api.web.dto;

import lombok.Data;

@Data
public class TbUserAddressDTO {


    private Long id;
    private String receiverName;
    private String receiverMobile;
    private String receiverState;
    private String receiverCity;
    private String receiverDistrict;
    private String receiverAddress;
    private Integer status;

}
