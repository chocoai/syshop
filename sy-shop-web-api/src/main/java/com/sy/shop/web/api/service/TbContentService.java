package com.sy.shop.web.api.service;

import com.sy.shop.web.api.web.dto.TbContentDTO;

import java.util.List;

public interface TbContentService {
    List<TbContentDTO> classifyById(Long categoryId);
}
