package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.DiminforExample;

/**
* @author liby 
* @version 创建时间：2017年11月1日 上午10:42:00
* 类说明
*/
public interface DimInforService extends GenericService<Diminfor, DiminforExample, String> {

	//查找平台
	List<Diminfor> selectPlatforms() throws Exception;

	List<Diminfor> locationsByplatform(String platform);

	List<Diminfor> providersBylocation(String platform, String location);



}
