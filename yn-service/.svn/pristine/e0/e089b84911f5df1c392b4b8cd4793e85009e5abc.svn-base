package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportProbeperMapper;
import com.szc.enterprise.web.model.ReportProbeper;
import com.szc.enterprise.web.model.ReportProbeperExample;
import com.szc.enterprise.web.model.ReportProbeperExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.ReportProbeperService;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午11:03:28
* 类说明
*/
@Service
public class ReportProbeperServiceImpl extends GenericServiceImpl<ReportProbeper, ReportProbeperExample, String>
		implements ReportProbeperService {

	@Autowired
	private ReportProbeperMapper reportProbeperMapper;
	@Autowired
	private CustomSqlService customSqlService;
	@Override
	public GenericDao<ReportProbeper, ReportProbeperExample, String> getDao() {
		return reportProbeperMapper;
	}
	@Override
	public List<ReportProbeper> reportProbeperList(String beginDate, String endDate, String platform, String location,
			String provider, Page<ReportProbeper> page) throws Exception {
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
		ReportProbeperExample reportProbeperExample = new ReportProbeperExample();
		Criteria criteria = reportProbeperExample.createCriteria();
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
//		reportProbeperExample.setOrderByClause(" `TimeStamp` DESC");
		
		if(page == null){
			List<ReportProbeper> reportProbepers = selectByExample(reportProbeperExample);
			return reportProbepers;
		}else{
			List<ReportProbeper> reportProbepers = selectByExample(reportProbeperExample, page);
			return reportProbepers;
		}
		//判断时间差，返回天粒度或小时粒度
//		int dc = Util.daysBetween(beginDate, endDate, date_fromat);
//		//如果时间差<7则按小时粒度呈现
//		if(dc < 7){
//			//按小时粒度
//			if(page == null){
//				List<ReportProbeper> reportProbepers = selectByExample(reportProbeperExample);
//				return reportProbepers;
//			}else{
//				List<ReportProbeper> reportProbepers = selectByExample(reportProbeperExample, page);
//				return reportProbepers;
//			}
//		}else{
//			//按天粒度
//			if(page == null){
//				List<ReportProbeper> reportProbepers = customSqlService.selectByExampleDay_rProbeper(reportProbeperExample);
//				return reportProbepers;
//			}else{
//				List<ReportProbeper> reportProbepers = customSqlService.selectByExampleDay_rProbeper(reportProbeperExample, page);
//				return reportProbepers;
//			}
//		}
	}
	@Override
	public List<ReportProbeper> reportProbeperList_Group(ReportProbeperExample probeperExample) throws Exception {
		return customSqlService.selectByExampleDay_rProbeper_Group(probeperExample);
	}


}
