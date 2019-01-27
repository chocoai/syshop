package com.sy.shop.commons.interfaces;

import com.sy.shop.commons.extractentity.BaseEntity;

import java.util.List;
import java.util.Map;

public interface SameInterface<T extends BaseEntity> {

    /**
     * 查询所有数据
     * @return
     */
    List<T> selectAll();

    /**
     * 根据Id删除数据
     * @param id
     */
    void deleteById(Long id);

    /**
     * 根据id查询数据
     * @param id
     * @return
     */
    T selectById(Long id);

    /**
     * 修改数据
     * @param entity
     */
    void updateTb(T entity);

    /**
     * 添加数据
     * @param entity
     */
    void insertTb(T entity);

    /**
     * 查询所有符合条件的条数
     * @param entity
     * @return
     */
    int getCount(T entity);

    /**
     * 查询分页数据
     * @param map
     * @return
     */
    List<T> selectByPage(Map<String, Object> map);

    /**
     * 批量删除
     * @param ids_arr
     */
    void deleteTbArr(String[] ids_arr);
}
