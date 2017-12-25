package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportExpertMapper;
import com.szc.enterprise.web.model.ReportExpert;
import com.szc.enterprise.web.model.ReportExpertExample;
import com.szc.enterprise.web.model.ReportExpertExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.ReportExpertService;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午10:07:35
* 类说明
*/
@Service
public class ReportExpertServiceImpl extends GenericServiceImpl<ReportExpert, ReportExpertExample, String>
		implements ReportExpertService {

	@Autowired
	private ReportExpertMapper reportExpertMapper;
	@Autowired
	private CustomSqlService customSqlService;
	@Override
	public GenericDao<ReportExpert, ReportExpertExample, String> getDao() {
		return reportExpertMapper;
	}
	@Override
	public List<ReportExpert> reportExpertList(String beginDate, String endDate, String platform, String location,
			String provider, Page<ReportExpert> page) throws Exception {
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
		ReportExpertExample reportExpertExample = new ReportExpertExample();
		Criteria criteria = reportExpertExample.createCriteria();
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
//		reportExpertExample.setOrderByClause(" `TimeStamp` DESC");
		
		if(page == null){
			List<ReportExpert> reportExperts = selectByExample(reportExpertExample);
			return reportExperts;
		}else{
			List<ReportExpert> reportExperts = selectByExample(reportExpertExample, page);
			return reportExperts;
		}
		//判断时间差，返回天粒度或小时粒度
//		int dc = Util.daysBetween(beginDate, endDate, date_fromat);
//		//如果时间差<7则按小时粒度呈现
//		if(dc < 7){
//			//按小时粒度
//			if(page == null){
//				List<ReportExpert> reportExperts = selectByExample(reportExpertExample);
//				return reportExperts;
//			}else{
//				List<ReportExpert> reportExperts = selectByExample(reportExpertExample, page);
//				return reportExperts;
//			}
//		}else{
//			//按天粒度
//			if(page == null){
//				List<ReportExpert> reportExperts = customSqlService.selectByExampleDay_rExpert(reportExpertExample);
//				return reportExperts;
//			}else{
//				List<ReportExpert> reportExperts = customSqlService.selectByExampleDay_rExpert(reportExpertExample, page);
//				return reportExperts;
//			}
//		}
	}
	@Override
	public List<ReportExpert> reportExpertList_Group(ReportExpertExample expertExample) throws Exception {
		return customSqlService.selectByExampleDay_rExpert_Group(expertExample);
	}


}
