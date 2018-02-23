package com.szc.enterprise.web.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.enterprise.web.dao.dao.UserMapper;
import com.szc.enterprise.web.model.User;
import com.szc.enterprise.web.service.UserService;
@Service
public class UserServiceImpl extends GenericServiceImpl<User,User,String> implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User getUserByUserNameandPassword(String username,String password) {
		// TODO Auto-generated method stub
		if(StringUtils.isNotBlank(username)&&StringUtils.isNotBlank(password)) {
			
			HashMap<String,String> map = new HashMap<String,String>();
			
			map.put("username", username);
			
			map.put("password", password);
			
			return userMapper.getUserByUserNameandPassword(map);
		
		}else {
			return null;
		}
		//Warning.warnFuntionTimer("MobileDao", "getLoginMobileByUserId", null, (System.currentTimeMillis() - begintimer), begintimer);
		
	}

	@Override
	public GenericDao<User, User, String> getDao() {
		// TODO Auto-generated method stub
		return userMapper;
	}

}
