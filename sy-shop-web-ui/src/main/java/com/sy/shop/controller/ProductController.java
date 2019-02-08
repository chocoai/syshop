package com.sy.shop.controller;

import com.sy.shop.api.UserApi;
import com.sy.shop.domain.*;
import com.sy.shop.dto.TbItemDTO;
import com.sy.shop.dto.TbUserAddressDTO;
import com.sy.shop.dto.TbUserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProductController {

    @RequestMapping(value = "products", method = RequestMethod.GET)
    public String product(TbItem tbItem, Model model) {
        List<TbItemDTO> product = UserApi.products(tbItem);
        model.addAttribute("products", product);
        model.addAttribute("keywords", tbItem.getTitle());
        return "product";
    }

    @RequestMapping(value = "product", method = RequestMethod.GET)
    public String product(String id, Model model) {
        TbItem product = UserApi.product(id);
        model.addAttribute("product", product);
        return "detail";
    }

    @RequestMapping(value = "settlement", method = RequestMethod.POST)
    public String settlement(TbItemDTO tbItemDTO, Integer number, Model model, HttpServletRequest request) {
        TbUserDTO user = (TbUserDTO) request.getSession().getAttribute("user");
        if (user == null) {
            return "login";
        } else {

            List<TbUserAddressDTO> address = UserApi.address(user.getId());
            for (TbUserAddressDTO t : address) {
                String replaceAll = t.getReceiverMobile().replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
                t.setReceiverMobile(replaceAll);
            }
            model.addAttribute("address", address);
            model.addAttribute("product", tbItemDTO);
            model.addAttribute("number", number);
            return "settlement";
        }
    }

    @RequestMapping(value = "success", method = RequestMethod.POST)
    public String success(TbOrderItem tbOrderItem,TbOrder tbOrder,Model model,HttpServletRequest request) {
        int res = UserApi.pay(tbOrder,tbOrderItem);

        System.out.println("tbOrderItem"+tbOrderItem);
        System.out.println("tbOrder"+tbOrder);

        return "success";
    }

}
