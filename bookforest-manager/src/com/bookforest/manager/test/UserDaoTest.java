package com.bookforest.manager.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bookforest.manager.dao.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml","classpath:spring-web.xml"})
public class UserDaoTest {

	@Autowired
	UserDao userDao;
	
	@Test
	public void testGetUser() throws Exception
	{
		System.out.println(userDao);
		System.out.println(userDao.getUserByNameAndPwd("admin", "admin2"));
	}
}
