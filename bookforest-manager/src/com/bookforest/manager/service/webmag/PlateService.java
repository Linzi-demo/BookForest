package com.bookforest.manager.service.webmag;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.manager.bean.Plate;
import com.bookforest.manager.dao.webmag.PlateDao;

@Service
public class PlateService {

	@Autowired
	PlateDao plateDao;
	
	public List<Plate> getPlateAll()
	{
		return plateDao.getPlateAll();
	}
	
	public boolean addPlate(Plate plate)
	{
		int i=plateDao.addPlate(plate);
		
		return i>0?true : false;
	}
	
	public boolean delPlateBatch(String[] plateIds)
	{
		int i=plateDao.delPlateBatch(plateIds);
		
		return i>0?true:false;
	}
}
