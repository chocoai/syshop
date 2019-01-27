package com.sy.shop.controller;

import com.sy.shop.api.API;
import  com.sy.shop.commons.utils.HttpClientUtils;
import com.sy.shop.commons.utils.MapperUtils;
import com.sy.shop.dto.TbContentDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 首页控制器
 * @author Administrator
 */
@Controller
public class IndexController {

    @RequestMapping(value = {"","index"}, method = RequestMethod.GET)
    public String index(Model model) {
        getJsonString(model);
        return "index";
    }
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";
    }


    /**
     * 转化成对象
     * @param model
     */
    private void getJsonString(Model model){
        String json = HttpClientUtils.doGet(API.API_CONTENT_PPT);
        try {
            List<TbContentDTO> tbContents = MapperUtils.json2listByTree(json, "data", TbContentDTO.class);
            //存到域对象中发送给前端
            model.addAttribute("ppt",tbContents);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
