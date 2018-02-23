package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportQualityMapper;
import com.szc.enterprise.web.model.ReportQuality;
import com.szc.enterprise.web.model.ReportQualityExample;
import com.szc.enterprise.web.model.ReportQualityExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.ReportQualityService;

/**
* @author liby 
* @version 创建时间：2017年10月27日 上午9:51:24
* 类说明
*/
@Service
public class ReportQualityServiceImpl extends GenericServiceImpl<ReportQuality, ReportQualityExample, String> implements ReportQualityService{

	@Autowired
	private ReportQualityMapper reportQualityMapper;
	@Autowired
	private CustomSqlService customSqlService;
//	
	@Override
	public GenericDao<ReportQuality, ReportQualityExample, String> getDao() {
		return reportQualityMapper;
	}

	@Override
	public List<ReportQuality> reportQualitiesList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportQuality> page) throws Exception{
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
		ReportQualityExample reportQualityExample = new ReportQualityExample();
		Criteria criteria = reportQualityExample.createCriteria();
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
//		reportQualityExample.setOrderByClause( " `TimeStamp` DESC ");
		
		//判断时间差，返回天粒度或小时粒度
//		int dc = Util.daysBetween(beginDate, endDate, date_fromat);
		if(page == null){
			List<ReportQuality> reportQualities = selectByExample(reportQualityExample);
			return reportQualities;
		}else{
			List<ReportQuality> reportQualities = selectByExample(reportQualityExample, page);
			return reportQualities;
		}
//		//如果时间差<7则按小时粒度呈现
//		if(dc < 7){
//			//按小时粒度
//			if(page == null){
//				List<ReportQuality> reportQualities = selectByExample(reportQualityExample);
//				return reportQualities;
//			}else{
//				List<ReportQuality> reportQualities = selectByExample(reportQualityExample, page);
//				return reportQualities;
//			}
//		}else{
//			//按天粒度
//			if(page == null){
//				List<ReportQuality> reportQualities = customSqlService.selectByExampleDay_rQuality(reportQualityExample);
//				return reportQualities;
//			}else{
//				List<ReportQuality> reportQualities = customSqlService.selectByExampleDay_rQuality(reportQualityExample, page);
//				return reportQualities;
//			}
//		}
	}

	@Override
	public List<ReportQuality> reportQualitiesList_Group(ReportQualityExample qualityExample) throws Exception {
		
		return customSqlService.selectByExampleDay_rQuality_Group(qualityExample);
	}

}
