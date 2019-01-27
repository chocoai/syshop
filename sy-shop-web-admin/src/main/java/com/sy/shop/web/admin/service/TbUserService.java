package com.sy.shop.web.admin.service;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.domain.TbUser;

import java.util.List;

public interface TbUserService {
    /**
     * 获得所有用户
     * @return
     */
    List<TbUser> selectAll();

    /**
     * 登录验证
     * @param email
     * @param password
     * @return
     */
    TbUser login(String email, String password);

    /**
     * 保存用户
     * @param tbUser
     * @return
     */
    BaseResult save(TbUser tbUser);

    /**
     * 批量删除
     * @param ids
     */
    BaseResult deleteTbUsers(String ids);
    int getCount(TbUser tbUser);

    PageInfo<TbUser> getPage(int draw, int start, int length, TbUser tbUser);

    TbUser getUser(Long id);

    BaseResult deleteById(Long id);
}
