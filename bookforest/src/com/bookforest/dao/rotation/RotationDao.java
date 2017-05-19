package com.bookforest.dao.rotation;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookforest.bean.Rotation;



@Repository
public interface RotationDao {

	//查询所有
	public List<Rotation> getRotationAll();
	
	//按激活状态查询所有并排序
	public List<Rotation> getRotationByStateOrder(Integer state);
	
	//添加
	public Integer addRotation(Rotation rotation);
	
	//批量删除
	public Integer delRotationBatch(String[] imgId);
}
