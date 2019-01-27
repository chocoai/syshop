package com.sy.shop.web.admin.service;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.domain.TbContent;

import java.util.List;

public interface TbContentService {

    /**
     * 获得所有用户
     * @return
     */
    List<TbContent> selectAll();

    int getCount(TbContent tbContent);

    PageInfo<TbContent> getPage(int sdraw, int sstart, int slength, TbContent tbContent);

    BaseResult save(TbContent tbContent);

    TbContent getTbContent(Long id);

    BaseResult deleteTbContent(Long id);

    BaseResult deleteTbArr(String ids);
}
