package com.bookforest.dao.plate;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookforest.bean.Plate;



@Repository
public interface PlateDao {

	//查找所有板块
	public List<Plate> getPlateAll();
	
	//添加板块
	public int addPlate(Plate plate);
	
	//批量删除板块
	public int delPlateBatch(String[] plateIds);
	
	//根据状态查找板块
	public List<Plate> getPlateByState(Integer plateState);
	
	
}
