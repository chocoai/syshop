package com.sy.shop.domain;

import com.sy.shop.commons.extractentity.BaseEntity;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

@Data
public class TbContent extends BaseEntity {

        @Length(min = 2,message = "标题不能为空")
        private String title;
        @Length(min = 2,message = "副标题不能为空")
        private String subTitle;
        @Length(min = 2,message = "标题描述不能为空")
        private String titleDesc;
        private String url;
        private String pic;
        private String pic2;
        private String content;
        private TbContentCategory parent;
}
