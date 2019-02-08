package com.sy.shop.web.api.web.controller.v1;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.domain.TbContentCategory;
import com.sy.shop.web.api.service.TbContentService;
import com.sy.shop.web.api.service.TbItemCatService;
import com.sy.shop.web.api.web.dto.TbContentDTO;
import com.sy.shop.web.api.web.dto.TbItemCatDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("${api.path.v1}/contents")
public class ContentController {
    private BaseResult result;

    @Autowired
    private TbContentService tbContentService;
    @Autowired
    private TbItemCatService tbItemCatService;


    @RequestMapping(value = "ppt" ,method = RequestMethod.GET)
    public BaseResult ppt(){
        List<TbContentDTO> tbContentDTOS = tbContentService.classifyById(89L);
        result = BaseResult.success(200,"成功", tbContentDTOS);
        return result;
    }

    @RequestMapping(value = "menu",method = RequestMethod.GET)
    public BaseResult menu(){
        List<TbItemCatDTO> catDTOS = new ArrayList<>();
        List<TbItemCatDTO> tbItemCatDTOs = tbItemCatService.selectItemCat();
        sortList(tbItemCatDTOs,catDTOS,0L);
        System.out.println(tbItemCatDTOs);
        System.out.println(catDTOS);
        if(tbItemCatDTOs == null){
            result = BaseResult.fail("未查询到数据");
        }else{
            result = BaseResult.success(200,"ok",catDTOS);
        }
        return result;
    }

    private void sortList(List<TbItemCatDTO> sourceList, List<TbItemCatDTO> targetList, Long parentId) {
        for (TbItemCatDTO tbItemCatDTO : sourceList) {
            if(tbItemCatDTO.getParent().getId().equals(parentId)){
                targetList.add(tbItemCatDTO);
                if(tbItemCatDTO.getIsParent()){
                    for (TbItemCatDTO contentCategory : sourceList) {
                        if(contentCategory.getParent().getId().equals(tbItemCatDTO.getId())){
                            sortList(sourceList,targetList,tbItemCatDTO.getId());
                            break;
                        }
                    }
                }
            }
        }
    }


}
