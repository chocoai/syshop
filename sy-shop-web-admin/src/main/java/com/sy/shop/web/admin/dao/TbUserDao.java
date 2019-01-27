package com.sy.shop.web.admin.dao;


import com.sy.shop.commons.extractentity.BaseEntity;
import com.sy.shop.commons.interfaces.SameInterface;
import com.sy.shop.domain.TbUser;

import java.util.List;
import java.util.Map;

public interface TbUserDao<T extends BaseEntity> extends SameInterface {

    TbUser getUserByEmail(String email);
    TbUser getTbById(Long id);
}
