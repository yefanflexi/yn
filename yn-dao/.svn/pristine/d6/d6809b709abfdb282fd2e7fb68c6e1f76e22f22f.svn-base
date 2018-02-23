package com.szc.enterprise.web.dao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.ReportExpert;
import com.szc.enterprise.web.model.ReportExpertExample;

public interface ReportExpertMapper extends GenericDao<ReportExpert, ReportExpertExample, String>{
    int countByExample(ReportExpertExample example);

    int deleteByExample(ReportExpertExample example);

    int insert(ReportExpert record);

    int insertSelective(ReportExpert record);

    List<ReportExpert> selectByExample(ReportExpertExample example);

    int updateByExampleSelective(@Param("record") ReportExpert record, @Param("example") ReportExpertExample example);

    int updateByExample(@Param("record") ReportExpert record, @Param("example") ReportExpertExample example);
}