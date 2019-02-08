package com.sy.shop.web.api.service;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.TbOrder;
import com.sy.shop.domain.TbUser;

public interface TbUserService {
    BaseResult selectByEmail(TbUser tbUser);

    BaseResult save(TbUser tbUser);

    BaseResult selectAddress(TbUser tbUser);

    BaseResult selectOrders( TbOrder tbOrder, Integer spage, Integer slimit);


}
