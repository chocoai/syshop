package com.sy.shop.web.admin.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.commons.validator.BeanValidator;
import com.sy.shop.domain.TbContent;
import com.sy.shop.web.admin.dao.TbContentDao;
import com.sy.shop.web.admin.service.TbContentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TbContentServiceImpl implements TbContentService {

    @Autowired
    TbContentDao tbContentDao;

    @Override
    public List<TbContent> selectAll() {
        return tbContentDao.selectAll();
    }

    @Override
    public int getCount(TbContent tbContent) {
        return tbContentDao.getCount(tbContent);
    }

    @Override
    public PageInfo<TbContent> getPage(int sdraw, int sstart, int slength, TbContent tbContent) {
        PageInfo<TbContent> pageInfo = new PageInfo<>();
        Map<String,Object> map = new HashMap<>();
        int count = getCount(tbContent);
        map.put("start",sstart);
        map.put("length",slength);
        map.put("tbContent",tbContent);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setDraw(sdraw);
        pageInfo.setData(tbContentDao.selectByPage(map));
        return pageInfo;
    }

    @Override
    public BaseResult save(TbContent tbContent) {
        String validator = BeanValidator.validator(tbContent);
        BaseResult result = null;
        if(validator == null){
            //新增用户
            if(tbContent.getId() == null){
                tbContent.setCreated(new Date());
                tbContent.setUpdated(new Date());
                tbContentDao.insertTb(tbContent);
            }
            else{
                //编辑用户
                tbContent.setUpdated(new Date());
                tbContentDao.updateTb(tbContent);
            }
            result = BaseResult.success("保存用户成功！");
        }else {
            result = BaseResult.fail(validator);
        }
        return result;
    }

    @Override
    public TbContent getTbContent(Long id) {
        return (TbContent) tbContentDao.selectById(id);
    }

    @Override
    public BaseResult deleteTbContent(Long id) {
        BaseResult baseResult = null;
        if(id != null){
            tbContentDao.deleteById(id);
            baseResult = BaseResult.success("删除成功");
        }else{
            baseResult = BaseResult.fail("删除失败");
        }
        return baseResult;
    }

    @Override
    public BaseResult deleteTbArr(String ids) {
        BaseResult baseResult = null;
        //验证ids不为空
        if(StringUtils.isNotBlank(ids)){
            String[] ids_arr = ids.split(",");
            tbContentDao.deleteTbArr(ids_arr);
            baseResult = BaseResult.success("删除成功");
        }else{
            baseResult = BaseResult.fail("删除失败");
        }
        return baseResult;
    }


}
