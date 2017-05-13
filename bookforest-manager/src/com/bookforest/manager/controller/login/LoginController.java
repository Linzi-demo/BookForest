package com.bookforest.manager.controller.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.manager.bean.User;
import com.bookforest.manager.service.login.UserService;
import com.bookforest.manager.utils.RequestUtil;

@Controller
public class LoginController {

	@Autowired
	UserService userService;
	/**
	 * 跳转到登录界面
	 */
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request)
	{
		return new ModelAndView("login/login");
	}
	
	@RequestMapping(value="doLogin",method=RequestMethod.POST)
	public String doLogin(HttpServletResponse response,HttpServletRequest request) throws ServletException, IOException
	{
		Map<String, Object> map = RequestUtil.getRequestParameter(request);
		
		//获取用户名，用户密码
		String userName=(String) map.get("username");
		String userPwd=(String) map.get("passwd");
		
		String loginIp=RequestUtil.getIpAddr(request);
		
		User user=null;
		try {
			user=userService.getUserByNameAndPwd(userName, userPwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(user!=null)
		{
			user.setLastIp(loginIp);
			HttpSession session=request.getSession();
			session.setAttribute("loginUser", user);
			
			request.getRequestDispatcher("index").forward(request, response);
			return null;
		}
		return "login/login";
	}
}
