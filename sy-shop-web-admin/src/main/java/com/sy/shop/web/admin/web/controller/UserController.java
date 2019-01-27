package com.sy.shop.web.admin.web.controller;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.dto.PageInfo;
import com.sy.shop.commons.interfaces.ControllerInterface;
import com.sy.shop.domain.TbUser;
import com.sy.shop.web.admin.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController extends ControllerInterface<TbUserService> {

    /**
     * 所有用户
     */
    @RequestMapping(value="list",method = RequestMethod.GET)
    public String list(){
        return "user_list";
    }

    /**
     *将新增用户或修改用户信息放到域对象中
     * @param id
     * @return
     */
    @ModelAttribute
    public TbUser getUser(Long id){
        TbUser tbUser = new TbUser();
        if(id!=null){
            tbUser = service.getUser(id);
        }
        return tbUser;
    }


    /**
     * 编辑和添加用户信息
     * @return
     */

    @RequestMapping(value="form",method = RequestMethod.GET)
    public String form(){
        return "user_form";
    }

    /**
     * 编辑和添加用户信息
     * @param tbUser
     * @param redirectAttributes
     * @param model
     * @return
     */
    @RequestMapping(value="save",method = RequestMethod.POST)
    public String save(TbUser tbUser, RedirectAttributes redirectAttributes, Model model){
        BaseResult baseResult = service.save(tbUser);
        if(baseResult.getStatus()== BaseResult.STATUS_SUCCESS){
            //如果表单验证通过了,把封装了具体状态码和信息的baseResult对象转递到目标页面
            redirectAttributes.addFlashAttribute("baseResult",baseResult);
            return "redirect:/user/list";
        }
        else{
            //如果表单验证没有通过
            //返回错误信息，并且回到新增页面
            model.addAttribute("baseResult",baseResult);
            return "user_form";
        }
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value="deletemulti",method = RequestMethod.GET)
    public BaseResult deletemulti(String ids){
        BaseResult baseResult = service.deleteTbUsers(ids);
        return baseResult;
    }

    /**
     * 分页显示数据
     * @param draw
     * @param start
     * @param length
     * @return
     */
    @ResponseBody
    @RequestMapping(value="page",method=RequestMethod.GET)
    public PageInfo<TbUser> page(String draw, String start, String length, TbUser tbUser){
        int sdraw = draw == null ? 1 : Integer.parseInt(draw);
        int sstart = start == null ? 0 : Integer.parseInt(start);
        int slength = length == null ? 10 : Integer.parseInt(length);
        PageInfo<TbUser> page = service.getPage(sdraw, sstart, slength,tbUser);
        return page;
    }
    @ResponseBody
    @RequestMapping(value = "deleteById",method = RequestMethod.GET)
    public BaseResult deleteById(Long id){
        BaseResult baseResult = service.deleteById(id);
        return baseResult;
    }

    @RequestMapping(value = "checkDatitl",method = RequestMethod.GET)
    public String checkDatitl(Long id) {
        System.out.println(id);
        return "user_datitl";
    }


}
