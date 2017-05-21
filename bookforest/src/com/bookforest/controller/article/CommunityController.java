package com.bookforest.controller.article;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.bean.Article;
import com.bookforest.bean.Plate;
import com.bookforest.bean.Rotation;
import com.bookforest.service.article.ArticleService;
import com.bookforest.service.plate.PlateService;
import com.bookforest.service.rotation.RotationService;
@Controller
public class CommunityController {

	@Autowired
	RotationService rotationService;
	
	@Autowired
	PlateService plateService;
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("community")
	public ModelAndView community(HttpServletRequest request)
	{
		List<Rotation> rotations = rotationService.getRotationStateOrder();
		List<Plate> plates = plateService.getPlateTwo();
		List<Article> articles = articleService.getArticleByType(0);
		
		request.setAttribute("rotations", rotations);
		request.setAttribute("plates", plates);
		request.setAttribute("articles", articles);
		
		return new ModelAndView("main/bookforest");
	}
	
	
	@RequestMapping("plateAll")
	public ModelAndView plate(HttpServletRequest request)
	{
		List<Plate> plates=plateService.getPlateShow();
		
		request.setAttribute("plates", plates);
		
		return new ModelAndView("plate/plate");
	}
	
	@RequestMapping("showArticle")
	public ModelAndView showArticle(HttpServletRequest request,@RequestParam(value="articleId") String articleId)
	{
		Article article = articleService.getArticleById(articleId);
		
		request.setAttribute("article", article);
		
		return new ModelAndView("article/article");
	}
}

