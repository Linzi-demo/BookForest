package com.bookforest.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.bean.Article;
import com.bookforest.bean.User;
import com.bookforest.service.article.ArticleService;
import com.bookforest.service.user.UserService;
import com.bookforest.utils.Maps;
import com.bookforest.utils.RequestUtil;
import com.bookforest.utils.TimeUtil;

@Controller
public class UserController {

	@Autowired
	ArticleService articleService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("userpage")
	public ModelAndView userpage(HttpServletRequest request,@RequestParam("uid") String uid)
	{
		List<Article> articles = articleService.getArticleMoreByAuthor(uid);
		User userMeta = userService.getUserMetaById(uid);
		
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser!=null)
		{
			boolean b = userService.userIsAttention(loginUser.getUserId(), uid);
			if(b)
			{
				request.setAttribute("isAttention", "true");
			}
		}
		
		request.setAttribute("articles", articles);
		request.setAttribute("userMeta", userMeta);
		
		return new ModelAndView("user/userpage");
	}
	
	@RequestMapping("userNameCheck")
	
	public void userNameCheck(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		boolean b = userService.getUserExist(Maps.getString(parameter, "username"));
		if(b)
		{
			response.getWriter().write("{\"valid\":false}");
		}
		else
		{
			response.getWriter().write("{\"valid\":true}");
		}
		
	}
	
	@RequestMapping("emailCheck")
	public void emailCheck(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		boolean b = userService.getEmailExist(Maps.getString(parameter, "email"));
		if(b)
		{
			response.getWriter().write("{\"valid\":false}");
		}
		else
		{
			response.getWriter().write("{\"valid\":true}");
		}
	}
	
	@RequestMapping("userAttention")
	@ResponseBody
	public Map<String, Object> userAttention(HttpServletRequest request) throws Exception
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String, Object> map =new HashMap<>();
		String attUserId = (String) parameter.get("attUserId");
		
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser==null)
		{
			map.put("msg", "nologin");
			return map;
		}
		
		String sysDate=TimeUtil.getSysTime();
		
		boolean b=userService.attentionUser(loginUser.getUserId(), attUserId, sysDate);
		
		if(b)
		{
			map.put("msg", "true");
			return map;
		}
		else
		{
			map.put("msg", "false");
			return map;
		}
	}
	
	@RequestMapping("delUserAttention")
	@ResponseBody
	public Map<String,String> delUserAttention(HttpServletRequest request)
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String,String> map =new HashMap<>();
		
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser==null)
		{
			map.put("msg", "nologin");
			return map;
		}
		
		boolean b=userService.delUserAttention(loginUser.getUserId(), Maps.getString(parameter, "attUserId"));
		
		if(b)
		{
			map.put("msg", "true");
			return map;
		}
		else
		{
			map.put("msg", "false");
			return map;
		}
	}
}
