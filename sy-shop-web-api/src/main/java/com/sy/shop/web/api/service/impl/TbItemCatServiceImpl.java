package com.sy.shop.web.api.service.impl;

import com.sy.shop.domain.TbItemCat;
import com.sy.shop.web.api.dao.TbItemCatDao;
import com.sy.shop.web.api.service.TbItemCatService;
import com.sy.shop.web.api.web.dto.TbItemCatDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TbItemCatServiceImpl implements TbItemCatService {

    @Autowired
    private TbItemCatDao dao;

    @Override
    public List<TbItemCatDTO> selectItemCat() {
        List<TbItemCatDTO> tbItemCatDTOS = new ArrayList<>();

        List<TbItemCat> tbItemCats = dao.selectItemCat();

        for (TbItemCat tbItemCat : tbItemCats) {
            TbItemCatDTO tbItemCatDTO = new TbItemCatDTO();
            BeanUtils.copyProperties(tbItemCat,tbItemCatDTO);
            tbItemCatDTOS.add(tbItemCatDTO);
        }
        System.out.println(tbItemCatDTOS.size());
        return tbItemCatDTOS;
    }
}
