package com.sy.shop.dto;

import lombok.Data;

@Data
public class TbItemDTO {


    private Long id;
    private String title;
    private Long price;
    private String image;
    private Long cid;
    private Integer status;

}
