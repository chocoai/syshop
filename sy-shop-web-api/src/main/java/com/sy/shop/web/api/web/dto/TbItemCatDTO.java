package com.sy.shop.web.api.web.dto;

import com.sy.shop.domain.TbItemCat;
import lombok.Data;

@Data
public class TbItemCatDTO {

    private Long id;
    private TbItemCat parent;
    private String name;
    private Integer status;
    private Integer sortOrder;
    private Boolean isParent;
}
