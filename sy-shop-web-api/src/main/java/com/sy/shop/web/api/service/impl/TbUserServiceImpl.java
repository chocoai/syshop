package com.sy.shop.web.api.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.commons.validator.BeanValidator;
import com.sy.shop.domain.TbItem;
import com.sy.shop.domain.TbOrder;
import com.sy.shop.domain.TbUser;
import com.sy.shop.domain.TbUserAddress;
import com.sy.shop.web.api.dao.TbOrderDao;
import com.sy.shop.web.api.dao.TbUserAddressDao;
import com.sy.shop.web.api.dao.TbUserDao;
import com.sy.shop.web.api.service.TbUserService;
import com.sy.shop.web.api.web.dto.TbItemDTO;
import com.sy.shop.web.api.web.dto.TbOrderDTO;
import com.sy.shop.web.api.web.dto.TbUserAddressDTO;
import com.sy.shop.web.api.web.dto.TbUserDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.*;

@Service
public class TbUserServiceImpl implements TbUserService {

    @Autowired
    private TbUserDao userDao;
    @Autowired
    private TbUserAddressDao addressDao;
    @Autowired
    private TbOrderDao orderDao;

    private BaseResult result;


    @Override
    public BaseResult selectByEmail(TbUser tbUser) {
        TbUser user = userDao.login(tbUser);
        if (user.getPassword().equals(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()))) {
            TbUserDTO dto = new TbUserDTO();
            BeanUtils.copyProperties(user, dto);
            result = BaseResult.success("登陆成功", dto);
        } else {
            result = BaseResult.fail("邮箱或密码错误");
        }
        return result;
    }

    @Override
    public BaseResult save(TbUser tbUser) {
        String validator = BeanValidator.validator(tbUser);
        if (validator == null) {
            //新增用户
            if (tbUser.getId() == null) {
                tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                tbUser.setCreated(new Date());
                tbUser.setUpdated(new Date());
                userDao.insertTb(tbUser);
            } else {
                //编辑用户
                tbUser.setUpdated(new Date());
                userDao.updateTb(tbUser);
            }
            result = BaseResult.success("保存成功！");
        } else {
            result = BaseResult.fail(validator);
        }
        return result;
    }

    @Override
    public BaseResult selectAddress(TbUser tbUser) {
        List<TbUserAddressDTO> tbUserAddressDTOS = new ArrayList<>();
        List<TbUserAddress> addresss = addressDao.selectAddress(tbUser);
        for (TbUserAddress tbUserAddress : addresss) {
            TbUserAddressDTO userAddressDTO = new TbUserAddressDTO();
            BeanUtils.copyProperties(tbUserAddress,userAddressDTO);
            tbUserAddressDTOS.add(userAddressDTO);
        }
        if (addresss != null) {
            result = BaseResult.success("数据查询成功",tbUserAddressDTOS);
        }else {
            result = BaseResult.fail("数据查询失败");
        }
        return result;
    }

    @Override
    public BaseResult selectOrders(TbOrder tbOrder,Integer spage,Integer slimit) {
        if(tbOrder == null){
            result = BaseResult.fail("数据查询失败");
        }else {
            Map<String, Object> map = new HashMap<>();
            List<TbOrderDTO> objectList = new ArrayList<>();
            Map<String, Object> pageinfo = new HashMap<>();
            int start = (spage - 1) * slimit;
            int count = getCount(tbOrder);
            int pagesNo = (int) Math.ceil(count * 1.0 / slimit);
            map.put("start", start);
            map.put("length", slimit);
            map.put("order", tbOrder);
            pageinfo.put("page", spage);
            pageinfo.put("limit", slimit);
            pageinfo.put("pagesNo", pagesNo);
            List<TbOrder> tbOrders = orderDao.selectOrsders(map);
            for (TbOrder order: tbOrders) {
                TbOrderDTO tbOrderDTO = new TbOrderDTO();
                BeanUtils.copyProperties(order,tbOrderDTO);
                objectList.add(tbOrderDTO);
            }
            if (tbOrders != null) {
                result = BaseResult.success("ok", objectList);
            } else {
                result = BaseResult.fail("error");
            }
        }
        return result;
    }

    private int getCount(TbOrder tbOrder) {
        return orderDao.getCount(tbOrder);
    }
}
