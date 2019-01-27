package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbContent;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbContentDao {

    List<TbContent> classifyById(Long categoryId);

}
