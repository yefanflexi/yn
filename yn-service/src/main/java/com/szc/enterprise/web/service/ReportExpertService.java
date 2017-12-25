package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportExpert;
import com.szc.enterprise.web.model.ReportExpertExample;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午10:05:33
* 类说明
*/
public interface ReportExpertService extends GenericService<ReportExpert, ReportExpertExample, String> {

	List<ReportExpert> reportExpertList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportExpert> page) throws Exception;
	
	List<ReportExpert> reportExpertList_Group(ReportExpertExample expertExample) throws Exception;
}
