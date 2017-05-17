package com.bookforest.manager.dao.webmag;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookforest.manager.bean.Rotation;

@Repository
public interface RotationDao {

	//查询所有
	public List<Rotation> getRotationAll();
	
	//添加
	public Integer addRotation(Rotation rotation);
	
	//批量删除
	public Integer delRotationBatch(String[] imgId);
}
