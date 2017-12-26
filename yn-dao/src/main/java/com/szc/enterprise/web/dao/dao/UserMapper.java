package com.szc.enterprise.web.dao.dao;

import java.util.Map;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.DiminforExample;
import com.szc.enterprise.web.model.User;

public interface UserMapper extends GenericDao<User, User, String>{
    public User getUserByUserNameandPassword(Map map);
}