package com.bookforest.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bookforest.bean.User;



@Repository
public interface UserDao {

	public User getUserByNameAndPwd(@Param("userName")String userName,@Param("userPwd")String userPwd) throws Exception;
}
