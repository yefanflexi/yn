package com.szc.enterprise.web.dao.dao;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.DiminforExample;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DiminforMapper extends GenericDao<Diminfor, DiminforExample, String>{
    int countByExample(DiminforExample example);

    int deleteByExample(DiminforExample example);

    int insert(Diminfor record);

    int insertSelective(Diminfor record);

    List<Diminfor> selectByExample(DiminforExample example);

    int updateByExampleSelective(@Param("record") Diminfor record, @Param("example") DiminforExample example);

    int updateByExample(@Param("record") Diminfor record, @Param("example") DiminforExample example);

	List<Diminfor> selectPlatforms(HashMap<String, String> map);

	List<Diminfor> locationsByplatform(HashMap<String, String> map);

	List<Diminfor> providersBylocation(HashMap<String, String> map);
}