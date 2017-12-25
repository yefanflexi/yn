package com.szc.enterprise.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.szc.common.orm.mysql.Page;
import com.szc.enterprise.web.dao.dao.CustomSqlMapper;
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
import com.szc.enterprise.web.service.CustomSqlService;

@Service
public class CustomSqlServiceImpl implements CustomSqlService{
	
	@Autowired
	private CustomSqlMapper customSqlMapper;

	@Override
	public List<ReportQuality> selectByExampleDay_rQuality(ReportQualityExample example) {
		return customSqlMapper.selectByExampleDay_rQuality(example);
	}

	@Override
	public List<ReportQuality> selectByExampleDay_rQuality(ReportQualityExample example, Page<ReportQuality> page) {
		return customSqlMapper.selectByExampleDay_rQuality(example, page);
	}

	@Override
	public List<ReportUserbehavior> selectByExampleDay_rUserbehavior(ReportUserbehaviorExample example) {
		return customSqlMapper.selectByExampleDay_rUserbehavior(example);
	}

	@Override
	public List<ReportUserbehavior> selectByExampleDay_rUserbehavior(ReportUserbehaviorExample example,
			Page<ReportUserbehavior> page) {
		return customSqlMapper.selectByExampleDay_rUserbehavior(example, page);
	}

	@Override
	public List<ReportExpert> selectByExampleDay_rExpert(ReportExpertExample example) {
		return customSqlMapper.selectByExampleDay_rExpert(example);
	}

	@Override
	public List<ReportExpert> selectByExampleDay_rExpert(ReportExpertExample example, Page<ReportExpert> page) {
		return customSqlMapper.selectByExampleDay_rExpert(example, page);
	}

	@Override
	public List<ReportProbeper> selectByExampleDay_rProbeper(ReportProbeperExample example) {
		return customSqlMapper.selectByExampleDay_rProbeper(example);
	}

	@Override
	public List<ReportProbeper> selectByExampleDay_rProbeper(ReportProbeperExample example, Page<ReportProbeper> page) {
		return customSqlMapper.selectByExampleDay_rProbeper(example, page);
	}

	@Override
	public List<ReportQuality> selectByExampleDay_rQuality_Group(ReportQualityExample example) {
		return customSqlMapper.selectByExampleDay_rQuality_Group(example);
	}

	@Override
	public List<ReportUserbehavior> selectByExampleDay_rUserbehavior_Group(ReportUserbehaviorExample example) {
		return customSqlMapper.selectByExampleDay_rUserbehavior_Group(example);
	}

	@Override
	public List<ReportExpert> selectByExampleDay_rExpert_Group(ReportExpertExample example) {
		return customSqlMapper.selectByExampleDay_rExpert_Group(example);
	}

	@Override
	public List<ReportProbeper> selectByExampleDay_rProbeper_Group(ReportProbeperExample example) {
		return customSqlMapper.selectByExampleDay_rProbeper_Group(example);
	}

	@Override
	public List<ReportQualityNew> selectByExampleDay_rQuality_Group_new(ReportQualityNewExample example) {
		return customSqlMapper.selectByExampleDay_rQuality_Group_new(example);
	}

}
