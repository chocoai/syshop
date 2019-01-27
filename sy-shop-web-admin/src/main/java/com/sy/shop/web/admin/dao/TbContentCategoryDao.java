package com.sy.shop.web.admin.dao;

import com.sy.shop.commons.extractentity.BaseEntity;
import com.sy.shop.commons.interfaces.SameInterface;
import com.sy.shop.domain.TbContentCategory;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbContentCategoryDao<T extends BaseEntity> extends SameInterface {

    List<TbContentCategory> selectAllById(Long id);
}
