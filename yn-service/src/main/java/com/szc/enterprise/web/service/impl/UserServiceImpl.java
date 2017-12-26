package com.szc.enterprise.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.enterprise.web.dao.dao.UserMapper;
import com.szc.enterprise.web.model.User;
import com.szc.enterprise.web.service.UserService;

public class UserServiceImpl extends GenericServiceImpl<User,User,String> implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User getUserByUserNameandPassword(String username,String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GenericDao<User, User, String> getDao() {
		// TODO Auto-generated method stub
		return userMapper;
	}

}
