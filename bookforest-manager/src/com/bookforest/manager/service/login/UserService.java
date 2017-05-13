package com.bookforest.manager.service.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookforest.manager.bean.User;
import com.bookforest.manager.dao.UserDao;
@Service
public class UserService {

	@Autowired
	UserDao userDao;
	/**
	 *根据用户名和密码查询用户
	 * @throws Exception 
	 */
	public User getUserByNameAndPwd(String userName,String userPwd) throws Exception
	{
        User user=userDao.getUserByNameAndPwd(userName, userPwd);
		
		return user;
	}
}
