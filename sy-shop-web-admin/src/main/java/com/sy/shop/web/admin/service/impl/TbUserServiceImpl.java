package com.sy.shop.web.admin.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.domain.TbUser;
import com.sy.shop.web.admin.dao.TbUserDao;
import com.sy.shop.web.admin.service.TbUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TbUserServiceImpl implements TbUserService {
    @Autowired
    TbUserDao tbUserDao;
    @Override
    public List<TbUser> selectAll() {
        List<TbUser> tbUsers = tbUserDao.selectAll();
        return tbUsers;
    }

    public TbUser login(String email, String password) {
        TbUser user = null;
        user = tbUserDao.getUserByEmail(email);
        if(user!=null){
            if(user.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
                return user;
            }
        }
        return null;
    }

    @Override
    public BaseResult save(TbUser tbUser) {
        BaseResult baseResult = checkUser(tbUser);
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            //新增用户
            if(tbUser.getId()==null){
                tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                tbUser.setCreated(new Date());
                tbUser.setUpdated(new Date());
                tbUserDao.insertTb(tbUser);
            }
            else{
                //编辑用户
                tbUser.setUpdated(new Date());
                tbUserDao.updateTb(tbUser);
            }
            baseResult.setMessage("保存用户成功！");
        }


        return baseResult;
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @Override
    public BaseResult deleteTbUsers(String ids) {
        BaseResult baseResult = null;
        //验证ids不为空
        if(StringUtils.isNotBlank(ids)){
            String[] ids_arr = ids.split(",");
            tbUserDao.deleteTbArr(ids_arr);
            baseResult = BaseResult.success("删除成功");
        }else{
            baseResult = BaseResult.fail("删除失败");
        }
        return baseResult;

    }

    /**
     * 所有条数
     * @return
     */
    @Override
    public int getCount(TbUser tbUser) {
        return tbUserDao.getCount(tbUser);
    }

    /**
     * 分页
     * @param draw
     * @param start
     * @param length
     * @param tbUser
     * @return
     */

    @Override
    public PageInfo<TbUser> getPage(int draw, int start, int length, TbUser tbUser) {
        PageInfo<TbUser> pageInfo = new PageInfo<>();
        Map<String,Object> map = new HashMap<>();
        int count = getCount(tbUser);
        map.put("start",start);
        map.put("length",length);
        map.put("tbUser",tbUser);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setDraw(draw);
        pageInfo.setData(tbUserDao.selectByPage(map));

        return pageInfo;
    }

    @Override
    public TbUser getUser(Long id) {
        return (TbUser) tbUserDao.selectById(id);
    }

    @Override
    public BaseResult deleteById(Long id) {
        BaseResult baseResult = null;
        if(id != null){
            tbUserDao.deleteById(id);
            baseResult = BaseResult.success("删除成功");
        }else{
            baseResult = BaseResult.fail("删除失败");
        }
        return baseResult;

    }

    /**
     * 验证表单数据
     * @param tbUser
     * @return BaseResult对象
     */
    public BaseResult checkUser(TbUser tbUser){
        BaseResult baseResult = BaseResult.success();
        if(StringUtils.isBlank(tbUser.getUsername())){
            baseResult = BaseResult.fail("用户名不能为空，请重写填写");
        }
        else if(StringUtils.isBlank(tbUser.getPassword())){
            baseResult = BaseResult.fail("密码不能为空，请重写填写");
        }
        else if(StringUtils.isBlank(tbUser.getPhone())){
            baseResult = BaseResult.fail("电话不能为空，请重写填写");
        }
        else if(StringUtils.isBlank(tbUser.getEmail())){
            baseResult = BaseResult.fail("邮箱不能为空，请重写填写");
        }

        return baseResult;
    }
}
