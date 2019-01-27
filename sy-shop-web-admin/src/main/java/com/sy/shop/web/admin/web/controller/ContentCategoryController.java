package com.sy.shop.web.admin.web.controller;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.interfaces.ControllerInterface;
import com.sy.shop.domain.TbContentCategory;
import com.sy.shop.web.admin.service.TbContentCategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("category")
public class ContentCategoryController extends ControllerInterface<TbContentCategoryService> {
    @ModelAttribute
    public TbContentCategory getTbContent(Long id){
        TbContentCategory tbContentCategory = new TbContentCategory();
        if(id!=null){
            tbContentCategory = service.selectById(id);
        }
        return tbContentCategory;
    }

    @RequestMapping(value = "lists",method = RequestMethod.GET)
    public String lists(Model model) {
        List<TbContentCategory> targetList = new ArrayList<>();
        List<TbContentCategory> sourceList = service.selectAll();
        sortList(sourceList,targetList,0L);
        model.addAttribute("tbContentCategories",targetList);
        return "category_lists";
    }

    @RequestMapping(value="form",method = RequestMethod.GET)
    public String form(TbContentCategory tbContentCategory){

        return "category_form";
    }

    @ResponseBody
    @RequestMapping(value = "detail",method = RequestMethod.POST)
    public List<TbContentCategory> detail(Long id) {
        if(id==null){
            id=0L;
        }
        List<TbContentCategory> sourceList = service.selectAllById(id);
        return sourceList;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public String save(TbContentCategory tbContentCategory, RedirectAttributes redirectAttributes, Model model){
        BaseResult baseResult = service.save(tbContentCategory);
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            //如果表单验证通过了,把封装了具体状态码和信息的baseResult对象转递到目标页面
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/category/lists";
        }
        else{
            //如果表单验证没有通过
            //返回错误信息，并且回到新增页面
            model.addAttribute("baseResult",baseResult);
            return "category_form";
        }
    }
    @ResponseBody
    @RequestMapping(value="deleteById",method = RequestMethod.GET)
    public BaseResult deleteById(Long id){
        BaseResult baseResult = service.deleteById(id);
        return baseResult;
    }

    @RequestMapping(value = "checkDatitl",method = RequestMethod.GET)
    public String checkDatitl(Long id) {
        return "category_datitl";
    }

     private void sortList(List<TbContentCategory> sourceList, List<TbContentCategory> targetList, Long parentId) {
         for (TbContentCategory tbContentCategory : sourceList) {
             if(tbContentCategory.getParent().getId().equals(parentId)){
                 targetList.add(tbContentCategory);
                 if(tbContentCategory.getIsParent()){
                     for (TbContentCategory contentCategory : sourceList) {
                         if(contentCategory.getParent().getId().equals(tbContentCategory.getId())){
                             sortList(sourceList,targetList,tbContentCategory.getId());
                             break;
                         }
                     }
                 }
             }
         }
     }
}
