package com.sy.shop.domain;

import com.sy.shop.commons.extractentity.BaseEntity;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;

@Data
public class TbContentCategory extends BaseEntity {

    @NotNull(message = "父目录不能为空")
    private TbContentCategory parent;
    @Length(min=1,message = "分类名称不能为空")
    private String name;
    private int status;
    @Length(min=1,message="排序必须介于1-20之间")
    private String sortOrder;
    private Boolean isParent;
}
