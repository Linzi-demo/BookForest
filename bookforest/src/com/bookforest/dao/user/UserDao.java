package com.bookforest.dao.user;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bookforest.bean.User;



@Repository
public interface UserDao {

	public User getUserByNameAndPwd(@Param("userName")String userName,@Param("userPwd")String userPwd) throws Exception;
	
	public User getUserById(String userId);
	
	public User getUserMetaById(String userId);
	
	public Integer getUserExist(String userName);
	
	public Integer getEmailExist(String email);
	
	public Integer addAttentionUser(@Param("userId")String userId,@Param("attUserId")String attUserId,@Param("sysDate")String sysDate);
	
	public Integer delAttentionUser(@Param("userId")String userId,@Param("attUserId")String attUserId);
	
	public Integer getUserAtt(@Param("userId")String userId,@Param("attUserId")String attUserId);
	
	public Integer getUserAttNum(String userId);
	
	public Integer getUserFollowNum(String userId);
}
