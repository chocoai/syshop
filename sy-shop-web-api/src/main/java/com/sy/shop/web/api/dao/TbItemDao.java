package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbItem;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbItemDao {

    List<TbItem> selectTbItemByPages(Map<String, Object> map);

    int getCount(TbItem tbItem);

    TbItem selectTbItemById(Long id);
}
