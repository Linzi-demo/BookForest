package com.bookforest.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.bean.User;
import com.bookforest.dao.UserDao;

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
}
