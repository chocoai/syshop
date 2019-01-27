package com.sy.shop.web.api.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.validator.BeanValidator;
import com.sy.shop.domain.TbUser;
import com.sy.shop.web.api.dao.TbUserDao;
import com.sy.shop.web.api.service.TbUserService;
import com.sy.shop.web.api.web.dto.TbUserDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;

@Service
public class TbUserServiceImpl implements TbUserService {

    @Autowired
    private TbUserDao dao;
    @Override
    public BaseResult selectByEmail(TbUser tbUser) {
        TbUser user = dao.login(tbUser);
        BaseResult result = null;
        if (user.getPassword().equals(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()))) {
            TbUserDTO dto = new TbUserDTO();
            BeanUtils.copyProperties(user,dto);
            result = BaseResult.success("登陆成功", dto);
        } else {
            result = BaseResult.fail("邮箱或密码错误");
        }
        return result;
    }

    @Override
    public BaseResult save(TbUser tbUser) {
        String validator = BeanValidator.validator(tbUser);
        BaseResult result = null;
        if (validator == null) {
            //新增用户
            if (tbUser.getId() == null) {
                tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                tbUser.setCreated(new Date());
                tbUser.setUpdated(new Date());
                dao.insertTb(tbUser);
            } else {
                //编辑用户
                tbUser.setUpdated(new Date());
                dao.updateTb(tbUser);
            }
            result = BaseResult.success("保存成功！");
        } else {
            result = BaseResult.fail(validator);
        }
        return result;
    }
}
