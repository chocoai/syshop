package com.sy.shop.domain;

import com.sy.shop.commons.extractentity.BaseEntity;
import lombok.Data;

@Data
public class TbUser extends BaseEntity {
    private String username;
    private String password;
    private String phone;
    private String email;

}
