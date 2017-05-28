package com.bookforest.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.bean.User;
import com.bookforest.dao.user.UserDao;

@Service
public class UserService {

	@Autowired 
	UserDao userDao;
	
	/**
	 * 根据用户名和密码查用户
	 * @throws Exception 
	 */
	public User getUserByNameAndPwd(String userName,String userPwd) throws Exception
	{
		User user=null;
		user=userDao.getUserByNameAndPwd(userName, userPwd);
		
		return user;
	}
	
	/**
	 * 查找用户，包含拓展信息
	 */
	public User getUserMetaById(String userId)
	{
		User user=userDao.getUserMetaById(userId);
		
		return user;
	}
	
	/**
	 * 根据用户名查找用户是否存在
	 */
	public boolean getUserExist(String userName)
	{
		int i=userDao.getUserExist(userName);
		
		return i>0?true : false;
	}
	
	public boolean getEmailExist(String email)
	{
		int i=userDao.getEmailExist(email);
		
		return i>0?true : false;
	}
	
	/**
	 * 关注用户
	 */
	public boolean attentionUser(String userId ,String attUserId,String sysDate)
	{
		Integer i = userDao.addAttentionUser(userId, attUserId, sysDate);
		
		return i>0?true : false;
	}
	
	/**
	 * 判断用户是否被关注
	 */
	public boolean userIsAttention(String userId,String attUserId)
	{
		int i=userDao.getUserAtt(userId, attUserId);
		
		return i>0?true :false;
	}
	
	/**
	 * 取消关注
	 */
	public boolean delUserAttention(String userId,String attUserId)
	{
		int i=userDao.delAttentionUser(userId, attUserId);
		
		return i>0?true:false;
	}
}
