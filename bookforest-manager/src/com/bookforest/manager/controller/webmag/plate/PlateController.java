package com.bookforest.manager.controller.webmag.plate;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookforest.manager.bean.Plate;
import com.bookforest.manager.bean.User;
import com.bookforest.manager.service.webmag.PlateService;
import com.bookforest.manager.utils.Maps;
import com.bookforest.manager.utils.RequestUtil;

@Controller
public class PlateController {

	
	@Autowired 
	PlateService plateService;
	
	@RequestMapping("plateAllJson")
	@ResponseBody
	public List<Plate> getPlateAllJson(HttpServletRequest request)
	{
		List<Plate> plateAll = plateService.getPlateAll();
		
		return plateAll;
	}
	
	@RequestMapping("addPlate")
	@ResponseBody
	public Map<String,Object> addPlate(HttpServletRequest request)
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String,Object> map=new HashMap<>();
		Plate plate=new Plate();
		
		User loginUser=(User)request.getSession().getAttribute("loginUser");
		
		plate.setPlateName(Maps.getString(parameter, "plateName"));
		plate.setPlateImg("http://localhost/pic/"+Maps.getString(parameter, "url"));
		plate.setPlateState(Integer.parseInt(Maps.getString(parameter, "plateState")));
		plate.setPlateInfo(Maps.getString(parameter, "plateInfo"));
		plate.setPlatePost(Maps.getString(parameter, "platePost"));
	
		plate.setOperatorId(loginUser.getUserId());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		plate.setOperatorTime(df.format(new Date()));
		
		boolean b = plateService.addPlate(plate);
		
		if(b==true)
		{
			map.put("data", "true");
			return map;
		}
		else
		{
			map.put("data", "false");
			return map;
		}
	}
	
	@RequestMapping("delPlateBatch")
	@ResponseBody
	public Map<String, Object> delPlateBatch(HttpServletRequest request)
	{
		Map<String, Object> parameter = RequestUtil.getRequestParameter(request);
		Map<String, Object> map=new HashMap<>();
		
		String strPlateId=Maps.getString(parameter, "plateIds");
		String[] plateId=strPlateId.substring(1).split("[|]");
		
		boolean b = plateService.delPlateBatch(plateId);
		
		if(b==true)
		{
			map.put("data", "true");
			return map;
		}
		else
		{
			map.put("data", "false");
			return map;
		}
	}
}
