package com.sy.shop.domain;

import com.sy.shop.commons.extractentity.BaseEntity;
import lombok.Data;

@Data
public class TbItemCat extends BaseEntity {
    private TbItemCat parent;
    private String name;
    private Integer status;
    private Integer sortOrder;
    private Boolean isParent;
}
