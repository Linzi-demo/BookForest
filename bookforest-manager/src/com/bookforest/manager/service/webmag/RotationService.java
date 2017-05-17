package com.bookforest.manager.service.webmag;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.manager.bean.Rotation;
import com.bookforest.manager.dao.webmag.RotationDao;

@Service
public class RotationService {

	@Autowired
	RotationDao rotationDao;
	
	public List<Rotation> getRotationAll()
	{
		List<Rotation> rotationAll = rotationDao.getRotationAll();
		
		return rotationAll;
	}
	
	public boolean addRotation(Rotation rotation) 
	{
		int  i=0;
		
		i=rotationDao.addRotation(rotation);
		
		return i==0?false:true;
	}
	
	public boolean delRotationBatch(String[] imgIds )
	{
		int i=rotationDao.delRotationBatch(imgIds);
		
		return i>0? true : false;
	}
}
