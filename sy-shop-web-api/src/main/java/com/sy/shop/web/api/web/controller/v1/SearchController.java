package com.sy.shop.web.api.web.controller.v1;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.*;
import com.sy.shop.web.api.service.TbItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@RestController
@RequestMapping("${api.path.v1}/searchs")
public class SearchController {

    @Autowired
    private TbItemService service;

    @RequestMapping(value = "page", method = RequestMethod.POST)
    public BaseResult page(String page, String limit, TbItem tbItem, HttpServletRequest request) {
        String header = request.getHeader("Content-type");
        System.out.println(header);
        int spage = page == null ? 1 : Integer.parseInt(page);
        int slimit = limit == null ? 24 : Integer.parseInt(limit);
        BaseResult baseResult = service.selectTbItemByPages(spage, slimit, tbItem);
        return baseResult;
    }

    @RequestMapping(value = "product",method = RequestMethod.POST)
    public BaseResult selectById(Long id){
        System.out.println("search--------"+id);
        return service.selectTbItemById(id);
    }
    @RequestMapping(value = "order",method = RequestMethod.POST)
    public BaseResult saveOrder(Long itemId,Integer num,Integer payment,String shippingName,TbUser tbUser){
        return service.saveOrder(itemId,num,payment,shippingName,tbUser);
    }
    @RequestMapping(value = "pay",method = RequestMethod.POST)
    public BaseResult selectById(TbOrder tbOrder,TbUser tbUser){
        return service.pay(tbOrder,tbUser);
    }

    @RequestMapping(value = "address",method = RequestMethod.GET)
    public BaseResult address(){
        return service.address(45L);

    }


}
