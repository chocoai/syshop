package com.sy.shop.web.api.service.impl;

import com.sy.shop.domain.TbContent;
import com.sy.shop.web.api.dao.TbContentDao;
import com.sy.shop.web.api.service.TbContentService;
import com.sy.shop.web.api.web.dto.TbContentDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TbContentServiceImpl implements TbContentService {

    @Autowired
    private TbContentDao dao;

    @Override
    public List<TbContentDTO> classifyById(Long categoryId) {
        List<TbContentDTO> tbContentDTOS = new ArrayList<>();
        List<TbContent> tbContents = dao.classifyById(categoryId);

        for (TbContent tbContent: tbContents) {
            TbContentDTO tbContentDTO = new TbContentDTO();
            BeanUtils.copyProperties(tbContent,tbContentDTO);
            tbContentDTOS.add(tbContentDTO);
        }
        return tbContentDTOS;
    }
}
