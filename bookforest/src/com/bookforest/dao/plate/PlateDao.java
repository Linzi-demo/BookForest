package com.bookforest.dao.plate;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	
	//投稿文章到板块
	public int inertArtToPlate(@Param("plateId")String plateId,@Param("articleId")String articleId,@Param("time")String time);
	
	//通过id查询板块
	public Plate getPlateById(String plateId);
	
	//查询板块下的文章
	public Integer getPlateArticle(@Param("articleId") String articleId,@Param("plateId")String plateId);
	
	//关注板块
	public Integer addUserPlate(@Param("userId")String userId,@Param("plateId")String plateId,@Param("time")String time);
	
	//根据用用户id和板块id查找记录
	public Integer getPlateUser(@Param("userId")String userId,@Param("plateId")String plateId);
	
	//根据文章查找板块
	public Plate getPlateByArticle(String articleId);
	
	//取消关注板块
	public Integer delUserPlate(@Param("userId")String userId,@Param("plateId")String plateId);
}
