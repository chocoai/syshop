package com.sy.shop.web.api.web.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
public class TbUserDTO {

    private Long id;
    private String username;
    private String phone;
    private String email;
    @JsonIgnore
    private String password;
}
