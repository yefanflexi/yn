package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportQualityNewMapper;
import com.szc.enterprise.web.model.ReportQualityNew;
import com.szc.enterprise.web.model.ReportQualityNewExample;
import com.szc.enterprise.web.model.ReportQualityNewExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.ReportQualityNewService;

@Service
public class ReportQualityNewServiceImpl extends GenericServiceImpl<ReportQualityNew, ReportQualityNewExample, String> implements ReportQualityNewService{

	@Autowired
	private ReportQualityNewMapper reportQualityNewMapper;
	@Autowired
	private CustomSqlService customSqlService;
	
	@Override
	public GenericDao<ReportQualityNew, ReportQualityNewExample, String> getDao() {
		return reportQualityNewMapper;
	}

	@Override
	public List<ReportQualityNew> reportQualitiesList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportQualityNew> page) throws Exception{
		/**
		 * beginDate   String    yyyy-MM-dd   
		 * endDate     String    yyyy-MM-dd
		 * platform    String    平台
		 * location    String 	   区域
		 * provider    String    厂家
		 * 
		 */
		//时间格式
		String date_fromat = "yyyy-MM-dd";
		//查询条件够造
		ReportQualityNewExample reportQualityNewExample = new ReportQualityNewExample();
		Criteria criteria = reportQualityNewExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginDate, date_fromat));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endDate, 1, date_fromat), date_fromat));
		if(!Util.isBlank(platform)){
			criteria.andPlatformEqualTo(platform);
		}
		if(!Util.isBlank(location)){
			criteria.andLocationEqualTo(location);
		}
		if(!Util.isBlank(provider)){
			criteria.andProviderEqualTo(provider);
		}
		
		//判断时间差，返回天粒度或小时粒度
		if(page == null){
			List<ReportQualityNew> reportQualities = selectByExample(reportQualityNewExample);
			return reportQualities;
		}else{
			List<ReportQualityNew> reportQualities = selectByExample(reportQualityNewExample, page);
			return reportQualities;
		}
	}

	@Override
	public List<ReportQualityNew> reportQualitiesList_Group(ReportQualityNewExample qualityNewExample) throws Exception {
		
		return customSqlService.selectByExampleDay_rQuality_Group_new(qualityNewExample);
	}
	
}
