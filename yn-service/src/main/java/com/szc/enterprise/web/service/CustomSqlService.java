package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportExpert;
import com.szc.enterprise.web.model.ReportExpertExample;
import com.szc.enterprise.web.model.ReportProbeper;
import com.szc.enterprise.web.model.ReportProbeperExample;
import com.szc.enterprise.web.model.ReportQuality;
import com.szc.enterprise.web.model.ReportQualityExample;
import com.szc.enterprise.web.model.ReportQualityNew;
import com.szc.enterprise.web.model.ReportQualityNewExample;
import com.szc.enterprise.web.model.ReportUserbehavior;
import com.szc.enterprise.web.model.ReportUserbehaviorExample;

public interface CustomSqlService {

	//质量报表
	List<ReportQuality> selectByExampleDay_rQuality(ReportQualityExample example);
	
	List<ReportQuality> selectByExampleDay_rQuality(ReportQualityExample example, Page<ReportQuality> page);
	
	//质量报表按平台，区域，厂商分组
	List<ReportQuality> selectByExampleDay_rQuality_Group(ReportQualityExample example);
	
	List<ReportQualityNew> selectByExampleDay_rQuality_Group_new(ReportQualityNewExample example);
	
	//用户行为报表
	List<ReportUserbehavior> selectByExampleDay_rUserbehavior(ReportUserbehaviorExample example);
	
	List<ReportUserbehavior> selectByExampleDay_rUserbehavior(ReportUserbehaviorExample example, Page<ReportUserbehavior> page);
	
	//用户行为报表按平台，区域，厂商分组
	List<ReportUserbehavior> selectByExampleDay_rUserbehavior_Group(ReportUserbehaviorExample example);
	
	//故障报表
	List<ReportExpert> selectByExampleDay_rExpert(ReportExpertExample example);
	
	List<ReportExpert> selectByExampleDay_rExpert(ReportExpertExample example, Page<ReportExpert> page);
	
	//故障报表按平台，区域，厂商分组
	List<ReportExpert> selectByExampleDay_rExpert_Group(ReportExpertExample example);
	
	//终端机顶盒性能报表
	List<ReportProbeper> selectByExampleDay_rProbeper(ReportProbeperExample example);
	
	List<ReportProbeper> selectByExampleDay_rProbeper(ReportProbeperExample example, Page<ReportProbeper> page);	
	
	//终端机顶盒性能报表按平台，区域，厂商分组
	List<ReportProbeper> selectByExampleDay_rProbeper_Group(ReportProbeperExample example);
}
