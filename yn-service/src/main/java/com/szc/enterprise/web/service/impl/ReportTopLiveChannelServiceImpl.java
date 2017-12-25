package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.generic.GenericDao;
import com.szc.common.generic.GenericServiceImpl;
import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.dao.dao.ReportToplivechannelMapper;
import com.szc.enterprise.web.model.ReportToplivechannel;
import com.szc.enterprise.web.model.ReportToplivechannelExample;
import com.szc.enterprise.web.model.ReportToplivechannelExample.Criteria;
import com.szc.enterprise.web.service.ReportTopLiveChannelService;

/**
* @author liby 
* @version 创建时间：2017年11月2日 下午5:00:23
* 类说明
*/
@Service
public class ReportTopLiveChannelServiceImpl
		extends GenericServiceImpl<ReportToplivechannel, ReportToplivechannelExample, String>
		implements ReportTopLiveChannelService {

	@Autowired
	private ReportToplivechannelMapper reportToplivechannelMapper;
	
	@Override
	public GenericDao<ReportToplivechannel, ReportToplivechannelExample, String> getDao() {
		return reportToplivechannelMapper;
	}

	@Override
	public List<ReportToplivechannel> reportTopLiveChannelList(String beginDate, String endDate,
			Page<ReportToplivechannel> page) {
		String date_fromat = "yyyy-MM-dd";
		//查询条件够造
		ReportToplivechannelExample reportToplivechannelExample = new ReportToplivechannelExample();
		Criteria criteria = reportToplivechannelExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginDate, date_fromat));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endDate, 1, date_fromat), date_fromat));
		reportToplivechannelExample.setOrderByClause( " `PlayTime` DESC ");
		
		//判断时间差，返回天粒度或小时粒度
//		int dc = Util.daysBetween(beginDate, endDate, date_fromat);
		if(page == null){
			List<ReportToplivechannel> reportToplivechannels = selectByExample(reportToplivechannelExample);
			return reportToplivechannels;
		}else{
			List<ReportToplivechannel> reportToplivechannels = selectByExample(reportToplivechannelExample, page);
			return reportToplivechannels;
		}
	}



}
