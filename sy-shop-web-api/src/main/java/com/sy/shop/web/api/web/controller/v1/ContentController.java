package com.sy.shop.web.api.web.controller.v1;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.web.api.service.TbContentService;
import com.sy.shop.web.api.web.dto.TbContentDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("${api.path.v1}/contents")
public class ContentController {

    @Autowired
    private TbContentService service;
    @RequestMapping(value = "ppt" ,method = RequestMethod.GET)
    public BaseResult ppt(){
        List<TbContentDTO> tbContentDTOS = service.classifyById(89L);
        BaseResult baseResult = BaseResult.success(200,"成功", tbContentDTOS);
        return baseResult;
    }

}
