package com.sy.shop.controller;

import com.sy.shop.api.UserApi;
import com.sy.shop.dto.TbUserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {

    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String register(){
        return "register";
    }
    @RequestMapping(value = "register",method = RequestMethod.POST)
    public String register(TbUserDTO tbUserDTO){
        TbUserDTO register = UserApi.register(tbUserDTO);
        System.out.println(register);
        return "register";
    }
}
