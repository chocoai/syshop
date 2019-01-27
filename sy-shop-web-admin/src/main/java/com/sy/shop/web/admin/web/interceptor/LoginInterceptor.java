package com.sy.shop.web.admin.web.interceptor;

import com.sy.shop.commons.utils.ConstantUitls;
import com.sy.shop.domain.TbUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        TbUser user = (TbUser) request.getSession().getAttribute(ConstantUitls.SESSION_USER);
        if(user==null){
            response.sendRedirect(request.getContextPath()+"/login");
            return false;
        }else{
            return true;
        }

    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        //  /login  回到index
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
