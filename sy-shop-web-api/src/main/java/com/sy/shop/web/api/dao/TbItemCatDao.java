package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbItemCat;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbItemCatDao {
    List<TbItemCat> selectItemCat();

}
