package com.sy.shop.web.api.service;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.*;

public interface TbItemService {

    BaseResult selectTbItemByPages(int spage, int slimit, TbItem tbItem);
    int count(TbItem tbItem);

    BaseResult selectTbItemById(Long id);


    BaseResult address(long id);


    BaseResult saveOrder(Long itemId, Integer num, Integer payment, String shippingName, TbUser tbUser);

    BaseResult pay(TbOrder tbOrder, TbUser tbUser);

}
