package com.sy.shop.web.admin.dao;


import com.sy.shop.commons.extractentity.BaseEntity;
import com.sy.shop.commons.interfaces.SameInterface;
import com.sy.shop.domain.TbContent;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbContentDao<T extends BaseEntity> extends SameInterface {
}
