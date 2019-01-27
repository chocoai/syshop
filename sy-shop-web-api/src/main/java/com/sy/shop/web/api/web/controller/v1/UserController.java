package com.sy.shop.web.api.web.controller.v1;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.TbUser;
import com.sy.shop.web.api.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("${api.path.v1}/users")
public class UserController {

   @Autowired
    private TbUserService service;
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public BaseResult login(TbUser tbUser){
        return service.selectByEmail(tbUser);
    }

    @RequestMapping(value = "register",method = RequestMethod.POST)
    public BaseResult register(TbUser tbUser){
        BaseResult baseResult = service.save(tbUser);
        return baseResult;
    }
}
