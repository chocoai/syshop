package com.sy.shop.web.api.dao;

import com.sy.shop.domain.TbUser;
import com.sy.shop.domain.TbUserAddress;

import java.util.List;

public interface TbUserAddressDao {
    List<TbUserAddress> selectAddress(TbUser tbUser);

    TbUserAddress selectAddressByUserId(Long id);
}
