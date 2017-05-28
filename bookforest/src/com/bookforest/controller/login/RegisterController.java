package com.bookforest.controller.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

	@RequestMapping("register")
	public ModelAndView register(HttpServletRequest request)
	{
		return new ModelAndView("login/register");
	}
}
