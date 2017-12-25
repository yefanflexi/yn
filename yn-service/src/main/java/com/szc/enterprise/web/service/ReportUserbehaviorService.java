package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportUserbehavior;
import com.szc.enterprise.web.model.ReportUserbehaviorExample;

/**
* @author liby 
* @version 创建时间：2017年10月27日 下午4:32:31
* 类说明
*/
public interface ReportUserbehaviorService extends GenericService<ReportUserbehavior, ReportUserbehaviorExample, String> {

	List<ReportUserbehavior> reportUserbehaviorList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportUserbehavior> page) throws Exception;
	
	List<ReportUserbehavior> reportUserbehaviorList_Group(ReportUserbehaviorExample reportUserbehaviorExample) throws Exception;
}
