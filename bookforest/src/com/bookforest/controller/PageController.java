package com.bookforest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping("index")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping("head")
	public ModelAndView head()
	{
		return new ModelAndView("common/head");
	}
	
	@RequestMapping("top")
	public ModelAndView top()
	{
		return new ModelAndView("common/top");
	}
}
