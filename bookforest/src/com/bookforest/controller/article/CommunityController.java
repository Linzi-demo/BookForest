package com.bookforest.controller.article;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookforest.bean.Plate;
import com.bookforest.bean.Rotation;
import com.bookforest.service.plate.PlateService;
import com.bookforest.service.rotation.RotationService;
@Controller
public class CommunityController {

	@Autowired
	RotationService rotationService;
	
	@Autowired
	PlateService plateService;
	
	@RequestMapping("community")
	public ModelAndView community(HttpServletRequest request)
	{
		List<Rotation> rotations = rotationService.getRotationStateOrder();
		List<Plate> plates = plateService.getPlateTwo();
		
		request.setAttribute("rotations", rotations);
		request.setAttribute("plates", plates);
		
		return new ModelAndView("main/bookforest");
	}
	
}
