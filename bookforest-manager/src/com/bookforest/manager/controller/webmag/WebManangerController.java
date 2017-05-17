package com.bookforest.manager.controller.webmag;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebManangerController {

	/**
	 * 跳转到菜单管理界面
	 */
	@RequestMapping("menumanager")
	public ModelAndView menuMananger(HttpServletRequest request)
	{
		return new ModelAndView("web-mag/menu-mag");
	}
	
	@RequestMapping("rolemanager")
	public ModelAndView rolemanager(HttpServletRequest request)
	{
		return new ModelAndView("web-mag/role-mag");
	}
	
	@RequestMapping("role-menu-manager")
	public ModelAndView rolemenumanager(HttpServletRequest request)
	{
		return new ModelAndView("web-mag/role-menu-mag");
	}
	
	@RequestMapping("skin-manager")
	public ModelAndView skinmanager(HttpServletRequest request)
	{
		return new ModelAndView("web-mag/skin-mag");
	}
	
	@RequestMapping("slideimg-manager")
	public ModelAndView slideimgmanager(HttpServletRequest request)
	{
		return new ModelAndView("web-mag/slideimg-mag");
	}
}
