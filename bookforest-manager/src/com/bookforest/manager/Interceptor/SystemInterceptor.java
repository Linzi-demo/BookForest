package com.bookforest.manager.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


import com.bookforest.manager.bean.User;
import com.bookforest.manager.utils.RequestUtil;

public class SystemInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse, Object paramObject, Exception paramException)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse,
			Object paramObject, ModelAndView paramModelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object paramObject) throws Exception {
		//获取请求的URL  
        String url = request.getRequestURI();  
        //URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制  
        if(url.indexOf("login")>=0){  
            return true;  
        } 
        if(request.getMethod().equals("post") || request.getMethod().equals("POST"))
        {
        	return true;
        }
		HttpSession session=request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser==null)
		{
			response.sendRedirect(RequestUtil.getBasePath(request) + "login");
            return false;
		}
		return true;
	}

}
