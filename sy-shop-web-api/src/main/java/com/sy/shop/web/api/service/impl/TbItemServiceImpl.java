package com.sy.shop.web.api.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.*;
import com.sy.shop.web.api.dao.TbItemDao;
import com.sy.shop.web.api.dao.TbOrderDao;
import com.sy.shop.web.api.dao.TbUserAddressDao;
import com.sy.shop.web.api.service.TbItemService;
import com.sy.shop.web.api.web.dto.TbItemDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class TbItemServiceImpl implements TbItemService {

    private BaseResult result;

    @Autowired
    private TbItemDao tbItemDao;
    @Autowired
    private TbOrderDao tbOrderDao;
    @Autowired
    private TbUserAddressDao addressDao;

    @Override
    public BaseResult selectTbItemByPages(int spage, int slimit, TbItem tbItem) {
        if(tbItem == null){
            result = BaseResult.fail("数据查询失败");
        }else {
            Map<String, Object> map = new HashMap<>();
            List<TbItemDTO> objectList = new ArrayList<>();
            Map<String, Object> pageinfo = new HashMap<>();
            int start = (spage - 1) * slimit;
            int count = count(tbItem);
            int pagesNo = (int) Math.ceil(count * 1.0 / slimit);
            map.put("start", start);
            map.put("limit", slimit);
            map.put("tbItem", tbItem);
            pageinfo.put("page", spage);
            pageinfo.put("limit", slimit);
            pageinfo.put("pagesNo", pagesNo);
            List<TbItem> tbItems = tbItemDao.selectTbItemByPages(map);
            getCopyBean(objectList, tbItems);
            if (tbItems != null) {
                result = BaseResult.success("ok", objectList);
            } else {
                result = BaseResult.fail("error");
            }
        }
        return result;
    }

    private void getCopyBean(List<TbItemDTO> objectList, List<TbItem> tbItems) {
        for (TbItem tbitem : tbItems) {
            TbItemDTO itemDTO = new TbItemDTO();
            BeanUtils.copyProperties(tbitem, itemDTO);
            objectList.add(itemDTO);
        }
    }

    @Override
    public int count(TbItem tbItem) {
        return tbItemDao.getCount(tbItem);
    }

    @Override
    public BaseResult selectTbItemById(Long id) {
        if (id == null) {
            result = BaseResult.fail("商品编号错误");
        }else{
           TbItem tbItem = tbItemDao.selectTbItemById(id);
           if(tbItem != null){
               result = BaseResult.success("数据查询成功",tbItem);
           }else{
               result = BaseResult.fail("数据查询失败");
           }
        }
        return result;
    }

//    @Override
//    public BaseResult pay() {
//        TbOrder tbOrder = new TbOrder();
//        TbOrderItem tbOrderItem = new TbOrderItem();
//        TbOrderShipping tbOrderShipping = new TbOrderShipping();
//
//
//
//
//        TbItem tbItem = tbItemDao.selectTbItemById(itemId);
//        TbUserAddress tbUserAddress = addressDao.selectAddressByUserId(39L);
//
//        System.out.println(tbItem);
//        Date date = new Date();
//        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
//        String format1 = format.format(date)+user.getId();
//
//        tbOrder.setOrderId(format1);
//        tbOrder.setCreateTime(date);
//        tbOrder.setPaymentTime(date);
//        tbOrder.setBuyerNick(user.getUsername());
//        tbOrder.setShippingCode(format.format(date));
//
//        tbOrderItem.setOrderId(format1);
//        tbOrderItem.setPrice(tbItem.getPrice());
//        tbOrderItem.setTotalFee(tbOrderItem.getNum()*tbItem.getPrice());
//
//        tbOrderShipping.setOrderId(format1);
//        tbOrderShipping.setReceiverAddress(tbUserAddress.getReceiverAddress());
//        tbOrderShipping.setReceiverCity(tbUserAddress.getReceiverCity());
//        tbOrderShipping.setReceiverDistrict(tbUserAddress.getReceiverDistrict());
//        tbOrderShipping.setReceiverMobile(tbUserAddress.getReceiverMobile());
//        tbOrderShipping.setReceiverState(tbUserAddress.getReceiverState());
//        tbOrderShipping.setReceiverName(tbUserAddress.getReceiverName());
//        tbOrderShipping.setCreated(date);
//        tbOrderShipping.setUpdated(date);
//
//        System.out.println("tbOrder"+tbOrder);
//        System.out.println("tbOrderItem"+tbOrderItem);
//        System.out.println("tbOrderShipping"+tbOrderShipping);
//
//        return null;
//    }

    @Override
    public BaseResult address(long id) {
        TbUserAddress tbUserAddress = addressDao.selectAddressByUserId(id);
        if(tbUserAddress != null){
            result = BaseResult.success("ok",tbUserAddress);
        }else{
            result = BaseResult.fail("error");
        }
        return result;
    }

    @Override
    public BaseResult saveOrder(Long itemId, Integer num, Integer payment, String shippingName, TbUser tbUser) {
        return null;
    }

    @Override
    public BaseResult pay(TbOrder tbOrder, TbUser tbUser) {
        return null;
    }

}
