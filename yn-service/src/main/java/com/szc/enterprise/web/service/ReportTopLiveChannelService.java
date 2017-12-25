package com.szc.enterprise.web.service;

import java.util.List;

import com.szc.common.generic.GenericService;
import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.model.ReportToplivechannel;
import com.szc.enterprise.web.model.ReportToplivechannelExample;

/**
* @author liby 
* @version 创建时间：2017年11月2日 下午4:58:15
* 类说明
*/
public interface ReportTopLiveChannelService
		extends GenericService<ReportToplivechannel, ReportToplivechannelExample, String> {

	List<ReportToplivechannel> reportTopLiveChannelList(String beginTime, String endTime, Page<ReportToplivechannel> page);



}
