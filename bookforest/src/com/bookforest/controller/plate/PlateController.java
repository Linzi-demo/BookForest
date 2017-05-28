package com.bookforest.controller.plate;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
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
import com.bookforest.bean.Plate;
import com.bookforest.bean.User;
import com.bookforest.service.article.ArticleService;
import com.bookforest.service.plate.PlateService;
import com.bookforest.utils.Maps;
import com.bookforest.utils.RequestUtil;
import com.bookforest.utils.TimeUtil;

@Controller
public class PlateController {

	@Autowired
	PlateService plateService;
	
	@Autowired
	ArticleService articleService;
	
	
	@RequestMapping("plateIndex")
	public ModelAndView plateIndex(HttpServletRequest request,@RequestParam("plateId")String plateId)
	{
		Plate plate=plateService.getPlateById(plateId);
		
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser!=null)
		{
			boolean b = plateService.getPlateUser(loginUser.getUserId(), plateId);
			if(b==true)
			{
				request.setAttribute("isAttention", "true");
			}
		}
		
		List<Article> articlesRec = articleService.getPlateArticleRec(plateId);
		System.out.println(articlesRec);
		request.setAttribute("articlesRec", articlesRec);
		request.setAttribute("plate", plate);
		return new ModelAndView("plate/plate-single");
	}
	
	@RequestMapping("checkLogin")
	@ResponseBody
	public Map<String, Object> checkLogin(HttpServletRequest request)
	{
		Map<String, Object> map= new HashMap<>();
		HttpSession session = request.getSession();
		User loginUser=(User) session.getAttribute("loginUser");
		if(loginUser==null)
		{
			map.put("msg", "fasle");
			
			return map;
		}
		else
		{
			String articles = articleService.getArticleByAuthorToString(loginUser.getUserId());
			System.out.println(articles);
			
			map.put("msg", "true");
			map.put("userArticles", articles);
			return map;
		}
	}
		@RequestMapping("contribute")
		@ResponseBody
		public Map<String, Object> contribute(HttpServletRequest request)
		{
			boolean b=false;
			Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
			Map<String, Object> map=new HashMap<>();
			
			String plateId=Maps.getString(parameter, "plateId");
			String articleId=Maps.getString(parameter, "articleId");
			
			if(plateService.getPlateArticle(articleId, plateId)==true)
			{
				map.put("msg", "exist");
				return map;
			}
			
			b=plateService.inserArtToPlate(plateId, articleId, TimeUtil.getCurrentTime());
			if(b==true)
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
		
		@RequestMapping("attention")
		@ResponseBody
		public Map<String, Object> attention(HttpServletRequest request,HttpServletResponse response) throws Exception
		{
			Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
			Map<String, Object> map=new HashMap<>();
			boolean b=false;
			
			HttpSession session = request.getSession();
			User loginUser=(User) session.getAttribute("loginUser");
			if(loginUser==null)
			{
				map.put("msg", "nologin");
				return map;
			}
			String plateId=Maps.getString(parameter, "plateId");
			b=plateService.addUserPlate(loginUser.getUserId(), plateId,TimeUtil.getCurrentTime());
			
			if(b==true)
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
		@RequestMapping("delArtAttention")
		@ResponseBody
		public Map<String, Object> delArtAttention(HttpServletRequest request,HttpServletResponse response) throws Exception
		{
			Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
			Map<String, Object> map=new HashMap<>();
			boolean b=false;
			
			HttpSession session = request.getSession();
			User loginUser=(User) session.getAttribute("loginUser");
			if(loginUser==null)
			{
				map.put("msg", "nologin");
				return map;
			}
			String plateId=Maps.getString(parameter, "plateId");
			b=plateService.addUserPlate(loginUser.getUserId(), plateId,TimeUtil.getCurrentTime());
			
			if(b==true)
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
