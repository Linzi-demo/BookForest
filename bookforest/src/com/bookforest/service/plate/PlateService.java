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
	
	public boolean inserArtToPlate(String plateId,String articleId,String time)
	{
		int i=plateDao.inertArtToPlate(plateId, articleId, time);
		
		return i>0?true : false;
	}
	
	public Plate getPlateById(String plateId)
	{
		return plateDao.getPlateById(plateId);
	}
	
	public boolean getPlateArticle(String articleId,String plateId)
	{
		int i=plateDao.getPlateArticle(articleId, plateId);
		
		return i>0?true:false;
	}
	
	public boolean addUserPlate(String userId,String plateId,String time)
	{
		int i=plateDao.addUserPlate(userId, plateId,time);
		
		return i>0?true:false;
	}
	
	public boolean getPlateUser(String userId,String plateId)
	{
		int i=plateDao.getPlateUser(userId, plateId);
		
		return i>0?true:false;
	}
	
	public boolean delUserPlate(String userId,String plateId)
	{
		int i=plateDao.delUserPlate(userId, plateId);
		
		return i>0?true:false;
	}
}
