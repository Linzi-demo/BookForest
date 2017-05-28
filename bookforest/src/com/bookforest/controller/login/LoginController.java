package com.bookforest.controller.login;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.bean.User;
import com.bookforest.service.user.UserService;
import com.bookforest.utils.RequestUtil;

@Controller
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request)
	{
		return new ModelAndView("login/login");
	}

	@RequestMapping("doLogin")
	public void doLogin(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		String userName=(String) parameter.get("username");
		String userPwd=(String) parameter.get("password");
		
		if(userName!=null && userPwd !=null)
		{
			User user=userService.getUserByNameAndPwd(userName, userPwd);
			if(user !=null)
			{
				String loginIp=RequestUtil.getIpAddr(request);
				user.setLoginIp(loginIp);
				
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", user);
				
				request.getRequestDispatcher("community").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("index").forward(request, response);
			}
		}
	}
	@RequestMapping("signout")
	public void signout(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		HttpSession session = request.getSession();
		session.removeAttribute("loginUser");
		
		request.getRequestDispatcher("community").forward(request, response);
	}
}
