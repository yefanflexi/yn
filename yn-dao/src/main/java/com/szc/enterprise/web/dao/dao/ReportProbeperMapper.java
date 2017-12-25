package com.szc.enterprise.web.dao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.ReportProbeper;
import com.szc.enterprise.web.model.ReportProbeperExample;

public interface ReportProbeperMapper extends GenericDao<ReportProbeper, ReportProbeperExample, String>{
    int countByExample(ReportProbeperExample example);

    int deleteByExample(ReportProbeperExample example);

    int insert(ReportProbeper record);

    int insertSelective(ReportProbeper record);

    List<ReportProbeper> selectByExample(ReportProbeperExample example);

    int updateByExampleSelective(@Param("record") ReportProbeper record, @Param("example") ReportProbeperExample example);

    int updateByExample(@Param("record") ReportProbeper record, @Param("example") ReportProbeperExample example);
}