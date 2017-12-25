package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportQuality;
import com.szc.enterprise.web.model.ReportQualityExample;

/**
 * 
 * @author Administrator
 *
 */
public interface ReportQualityService extends GenericService<ReportQuality, ReportQualityExample, String>{
	
	List<ReportQuality> reportQualitiesList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportQuality> page) throws Exception;
	
	//分组
	List<ReportQuality> reportQualitiesList_Group(ReportQualityExample qualityExample) throws Exception;
	
}
