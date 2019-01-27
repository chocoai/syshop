package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbUser;
import org.springframework.stereotype.Repository;

@Repository
public interface TbUserDao {
    TbUser login(TbUser tbUser);

    void insertTb(TbUser tbUser);

    void updateTb(TbUser tbUser);
}
