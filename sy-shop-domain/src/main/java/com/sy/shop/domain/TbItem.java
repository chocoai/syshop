package com.sy.shop.domain;

import com.sy.shop.commons.extractentity.BaseEntity;
import lombok.Data;

@Data
public class TbItem extends BaseEntity {

    private String title;
    private String sellPoint;
    private Long price;
    private Integer num;
    private String barcode;
    private String image;
    private Long cid;
    private Integer status;

}
