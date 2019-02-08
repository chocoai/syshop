package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbOrder;
import com.sy.shop.domain.TbUser;

import java.util.List;
import java.util.Map;

public interface TbOrderDao {

    int getCount(TbOrder order);
    List<TbOrder> selectOrsders(Map<String, Object> map);
}
