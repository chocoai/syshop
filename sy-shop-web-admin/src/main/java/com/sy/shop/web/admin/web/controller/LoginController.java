package com.sy.shop.web.admin.web.controller;

import com.sy.shop.commons.utils.ConstantUitls;
import com.sy.shop.domain.TbUser;
import com.sy.shop.web.admin.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
//@RequestMapping("user")
public class LoginController {

    @Autowired
    TbUserService service;
    /**
     * http://localhost:8080/user/login
     * 返回登录页面
     * @return
     */
    @RequestMapping(value={"","login"},method= RequestMethod.GET)
    public String login(){
        return "login";//   /WEB-INF/views/login.jsp
    }

    /**
     * 执行登录业务
     * @param email
     * @param password
     * @return
     */
    @RequestMapping(value="login",method=RequestMethod.POST)
    public String login(String email, String password, Model model, HttpServletRequest request){
        //实现登录
        TbUser user = service.login(email, password);
        if(user==null){
            //登录失败
            model.addAttribute("msg","用户名或密码错误");
            return login();
        }else{
            //登录成功
            request.getSession().setAttribute(ConstantUitls.SESSION_USER,user);
//            redirectAttributes.addFlashAttribute(ConstantUitls.SESSION_USER,user);
            return "redirect:/index";
        }
//        return "login";
    }

    /**
     * 注销
     * @param request
     * @return
     */
    @RequestMapping(value="logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "login";
    }


}
