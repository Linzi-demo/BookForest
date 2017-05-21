package com.bookforest.controller.plate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.service.plate.PlateService;

@Controller
public class PlateController {

	@Autowired
	PlateService plateService;
	
	
	@RequestMapping("plateIndex")
	public ModelAndView plateIndex(HttpServletRequest request,@RequestParam("plateId")String plateId)
	{
		return new ModelAndView("plate/plate-single");
	}
}
