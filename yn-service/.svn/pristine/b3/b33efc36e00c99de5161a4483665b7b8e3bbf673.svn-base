package com.szc.enterprise.web.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.enterprise.web.dao.dao.DiminforMapper;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.DiminforExample;
import com.szc.enterprise.web.service.DimInforService;

/**
* @author liby 
* @version 创建时间：2017年11月1日 上午10:43:54
* 类说明
*/
@Service
public class DimInforServiceImpl extends GenericServiceImpl<Diminfor, DiminforExample, String>
		implements DimInforService {

	@Autowired
	private DiminforMapper diminforMapper;
	@Override
	public GenericDao<Diminfor, DiminforExample, String> getDao() {
		return diminforMapper;
	}
	@Override
	public List<Diminfor> selectPlatforms() throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		List<Diminfor> diminfors = diminforMapper.selectPlatforms(map);
		return diminfors;
	}
	@Override
	public List<Diminfor> locationsByplatform(String platform) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("platform", platform);
		List<Diminfor> diminfors = diminforMapper.locationsByplatform(map);
		return diminfors;
	}
	@Override
	public List<Diminfor> providersBylocation(String platform, String location) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("platform", platform);
		map.put("location", location);
		List<Diminfor> diminfors = diminforMapper.providersBylocation(map);
		return diminfors;
	}


}
