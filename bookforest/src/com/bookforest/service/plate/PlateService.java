package com.bookforest.service.plate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.bean.Plate;
import com.bookforest.dao.plate.PlateDao;


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
	
	public List<Plate> getPlateTwo()
	{
		List<Plate> plates = plateDao.getPlateByState(2);
		
		return plates;
	}
	
	public List<Plate> getPlateShow()
	{
		List<Plate> plates=plateDao.getPlateByState(1);
		plates.addAll(plateDao.getPlateByState(2));
		
		return plates;
	}
}
