package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportProbeper;
import com.szc.enterprise.web.model.ReportProbeperExample;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午11:01:57
* 类说明
*/
public interface ReportProbeperService extends GenericService<ReportProbeper, ReportProbeperExample, String> {

	List<ReportProbeper> reportProbeperList(String beginDate, String endDate, String platform, String location, String provider, Page<ReportProbeper> page) throws Exception;
	
	List<ReportProbeper> reportProbeperList_Group(ReportProbeperExample probeperExample) throws Exception;
}
