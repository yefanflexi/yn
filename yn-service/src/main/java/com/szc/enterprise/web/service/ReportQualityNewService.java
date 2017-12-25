package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportQualityNew;
import com.szc.enterprise.web.model.ReportQualityNewExample;

public interface ReportQualityNewService extends GenericService<ReportQualityNew, ReportQualityNewExample, String>{

	List<ReportQualityNew> reportQualitiesList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportQualityNew> page) throws Exception;
	
	//分组
	List<ReportQualityNew> reportQualitiesList_Group(ReportQualityNewExample qualityExample) throws Exception;
	
}
