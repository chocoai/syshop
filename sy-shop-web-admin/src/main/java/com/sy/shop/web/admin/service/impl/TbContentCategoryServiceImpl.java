package com.sy.shop.web.admin.service.impl;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.commons.validator.BeanValidator;
import com.sy.shop.domain.TbContent;
import com.sy.shop.domain.TbContentCategory;
import com.sy.shop.web.admin.dao.TbContentCategoryDao;
import com.sy.shop.web.admin.service.TbContentCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class TbContentCategoryServiceImpl implements TbContentCategoryService {


    @Autowired
    private TbContentCategoryDao tbContentCategoryDao;


    @Override
    public List<TbContentCategory> selectAll() {
        return tbContentCategoryDao.selectAll();
    }

    @Override
    public List<TbContentCategory> selectAllById(Long id) {
        return tbContentCategoryDao.selectAllById(id);

    }

    @Override
    public PageInfo<TbContentCategory> getPage(int sdraw, int sstart, int slength, TbContentCategory tbContentCategory) {
        PageInfo<TbContentCategory> pageInfo = new PageInfo<>();
        Map<String,Object> map = new HashMap<>();
        int count = getCount(tbContentCategory);
        map.put("start",sstart);
        map.put("length",slength);
        map.put("tbContentCategory",tbContentCategory);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setDraw(sdraw);
        pageInfo.setData(tbContentCategoryDao.selectByPage(map));
        return pageInfo;
    }

    private int getCount(TbContentCategory tbContentCategory) {
        return 0;
    }

    @Override
    public BaseResult save(TbContentCategory tbContentCategory) {
        String validator = BeanValidator.validator(tbContentCategory);
        BaseResult result = null;
        if(validator == null){
            //新增用户
            if(tbContentCategory.getId() == null){
                if(tbContentCategory.getParent()!=null&&tbContentCategory.getParent().getId()!=null) {
                    Long parent_id = tbContentCategory.getParent().getId();
                    TbContentCategory contentCategoryParent = (TbContentCategory) tbContentCategoryDao.selectById(parent_id);
                    contentCategoryParent.setIsParent(true);
                    tbContentCategoryDao.updateTb(contentCategoryParent);
                }else{
                    //如果是根级目录的目录，则设置父目录的id和name
                    tbContentCategory.getParent().setId(0L);
                    tbContentCategory.getParent().setName("/");
                    tbContentCategory.setIsParent(true);
                }
                tbContentCategory.setCreated(new Date());
                tbContentCategory.setUpdated(new Date());
                tbContentCategory.setIsParent(false);
                tbContentCategoryDao.insertTb(tbContentCategory);
            }
            else{
                //编辑用户
                tbContentCategory.setUpdated(new Date());
                tbContentCategoryDao.updateTb(tbContentCategory);
            }
            result = BaseResult.success("保存用户成功！");
        }else {
            result = BaseResult.fail(validator);
        }
        return result;
    }

    @Override
    public TbContentCategory selectById(Long id) {
        return (TbContentCategory) tbContentCategoryDao.selectById(id);
    }

    @Override
    public BaseResult deleteById(Long id) {
        BaseResult baseResult = null;
        if(id != null){
            tbContentCategoryDao.deleteById(id);
            baseResult = BaseResult.success("删除成功");
        }else{
            baseResult = BaseResult.fail("删除失败");
        }
        return baseResult;
    }


}
