package com.sy.shop.web.admin.web.controller;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.commons.interfaces.ControllerInterface;
import com.sy.shop.domain.TbContent;
import com.sy.shop.web.admin.service.TbContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("content")
public class ContentController extends ControllerInterface<TbContentService> {
    /**
     * 所有用户
     */

    @RequestMapping(value="lists",method = RequestMethod.GET)
    public String list(){
        return "content_lists";
    }

    @RequestMapping(value="form",method = RequestMethod.GET)
    public String form(){
        return "content_form";
    }

    @ResponseBody
    @RequestMapping(value="deleteById",method = RequestMethod.GET)
    public BaseResult deleteById(Long id){
        BaseResult baseResult = service.deleteTbContent(id);
        return baseResult;
    }

    @RequestMapping(value = "checkDatitl",method = RequestMethod.GET)
    public String checkDatitl(Long id) {
        return "content_datitl";
    }


    @ModelAttribute
    public TbContent getTbContent(Long id){
        TbContent tbContent = new TbContent();
        if(id!=null){
            tbContent = service.getTbContent(id);
        }
        return tbContent;
    }
    @ResponseBody
    @RequestMapping(value="deletemulti",method = RequestMethod.GET)
    public BaseResult deletemulti(String ids){
        BaseResult baseResult = service.deleteTbArr(ids);
        return baseResult;
    }


    @ResponseBody
    @RequestMapping(value="page",method = RequestMethod.GET)
    public PageInfo<TbContent> page(String draw, String start, String length, TbContent tbContent){

        int sdraw = draw == null ? 1 : Integer.parseInt(draw);
        int sstart = draw == null ? 0 : Integer.parseInt(start);
        int slength = draw == null ? 10 : Integer.parseInt(length);
        PageInfo<TbContent> page = service.getPage(sdraw, sstart, slength,tbContent);
        return page;
    }


    @RequestMapping(value="save",method = RequestMethod.POST)
    public String save(TbContent tbContent, RedirectAttributes redirectAttributes, Model model){
        BaseResult baseResult = service.save(tbContent);
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            //如果表单验证通过了,把封装了具体状态码和信息的baseResult对象转递到目标页面
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/content/lists";
        }
        else{
            //如果表单验证没有通过
            //返回错误信息，并且回到新增页面
            model.addAttribute("baseResult",baseResult);
            return "content_form";
        }
    }


}
