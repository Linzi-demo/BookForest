package com.bookforest.service.rotation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.bean.Rotation;
import com.bookforest.dao.rotation.RotationDao;


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
	
	/**
	 * 查询所有激活状态的rotation 并排序
	 */
	public List<Rotation> getRotationStateOrder()
	{
		return rotationDao.getRotationByStateOrder(1);
	}
}
