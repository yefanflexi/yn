package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportUserbehaviorMapper;
import com.szc.enterprise.web.model.ReportUserbehavior;
import com.szc.enterprise.web.model.ReportUserbehaviorExample;
import com.szc.enterprise.web.model.ReportUserbehaviorExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.ReportUserbehaviorService;

/**
* @author liby 
* @version 创建时间：2017年10月27日 下午4:36:12
* 类说明
*/
@Service
public class ReportUserbehaviorServiceImpl extends GenericServiceImpl<ReportUserbehavior, ReportUserbehaviorExample, String>
		implements ReportUserbehaviorService {

	@Autowired
	private ReportUserbehaviorMapper reportUserbehaviorMapper;
	@Autowired
	private CustomSqlService customSqlService;
	@Override
	public GenericDao<ReportUserbehavior, ReportUserbehaviorExample, String> getDao() {
		return reportUserbehaviorMapper;
	}
	@Override
	public List<ReportUserbehavior> reportUserbehaviorList(String beginDate, String endDate, String platform,
			String location, String provider, Page<ReportUserbehavior> page) throws Exception {
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
		ReportUserbehaviorExample reportUserbehaviorExample = new ReportUserbehaviorExample();
		Criteria criteria = reportUserbehaviorExample.createCriteria();
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
//		reportUserbehaviorExample.setOrderByClause("  `TimeStamp` DESC");
		
		if(page == null){
			List<ReportUserbehavior> reportUserbehaviors = selectByExample(reportUserbehaviorExample);
			return reportUserbehaviors;
		}else{
			List<ReportUserbehavior> reportUserbehaviors = selectByExample(reportUserbehaviorExample, page);
			return reportUserbehaviors;
		}
		
		//判断时间差，返回天粒度或小时粒度
//		int dc = Util.daysBetween(beginDate, endDate, date_fromat);
//		//如果时间差<7则按小时粒度呈现
//		if(dc < 7){
//			//按小时粒度
//			if(page == null){
//				List<ReportUserbehavior> reportUserbehaviors = selectByExample(reportUserbehaviorExample);
//				return reportUserbehaviors;
//			}else{
//				List<ReportUserbehavior> reportUserbehaviors = selectByExample(reportUserbehaviorExample, page);
//				return reportUserbehaviors;
//			}
//		}else{
//			//按天粒度
//			if(page == null){
//				List<ReportUserbehavior> reportUserbehaviors = customSqlService.selectByExampleDay_rUserbehavior(reportUserbehaviorExample);
//				return reportUserbehaviors;
//			}else{
//				List<ReportUserbehavior> reportUserbehaviors = customSqlService.selectByExampleDay_rUserbehavior(reportUserbehaviorExample, page);
//				return reportUserbehaviors;
//			}
//		}
	}
	@Override
	public List<ReportUserbehavior> reportUserbehaviorList_Group(ReportUserbehaviorExample reportUserbehaviorExample)
			throws Exception {
		return customSqlService.selectByExampleDay_rUserbehavior_Group(reportUserbehaviorExample);
	}

}
