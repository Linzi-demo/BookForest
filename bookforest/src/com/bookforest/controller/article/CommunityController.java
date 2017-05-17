package com.bookforest.controller.article;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class CommunityController {

	@RequestMapping("community")
	public ModelAndView community()
	{
		return new ModelAndView("main/bookforest");
	}
	
}
