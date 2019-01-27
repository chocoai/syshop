package com.sy.shop.web.admin.service;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.domain.TbContent;
import com.sy.shop.domain.TbContentCategory;

import java.util.List;

public interface TbContentCategoryService {

    List<TbContentCategory> selectAll();

    List<TbContentCategory> selectAllById(Long id);

    PageInfo<TbContentCategory> getPage(int sdraw, int sstart, int slength, TbContentCategory tbContentCategory);

    BaseResult save(TbContentCategory tbContentCategory);

    TbContentCategory selectById(Long id);

    BaseResult deleteById(Long id);

}

