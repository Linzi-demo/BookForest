package com.bookforest.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest request)
	{
		System.out.println("index  ........");
		return new ModelAndView("index");
	}
	
	@RequestMapping("head")
	public ModelAndView head(HttpServletRequest request)
	{
		return new ModelAndView("common/head");
	}
	
	@RequestMapping("left")
	public ModelAndView left(HttpServletRequest request)
	{
		return new ModelAndView("common/left");
	}
	
	@RequestMapping("top")
	public ModelAndView top(HttpServletRequest request)
	{
		return new ModelAndView("common/top");
	}
	
	@RequestMapping("footer")
	public ModelAndView footer(HttpServletRequest request)
	{
		return new ModelAndView("common/footer");
	}
	
	@RequestMapping("buttom")
	public ModelAndView buttom(HttpServletRequest request)
	{
		return new ModelAndView("common/buttom");
	}
	
	
}
