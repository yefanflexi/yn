package com.szc.enterprise.web.dao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.ReportQualityNew;
import com.szc.enterprise.web.model.ReportQualityNewExample;

public interface ReportQualityNewMapper extends GenericDao<ReportQualityNew, ReportQualityNewExample, String>{
    int countByExample(ReportQualityNewExample example);

    int deleteByExample(ReportQualityNewExample example);

    int insert(ReportQualityNew record);

    int insertSelective(ReportQualityNew record);

    List<ReportQualityNew> selectByExample(ReportQualityNewExample example);

    int updateByExampleSelective(@Param("record") ReportQualityNew record, @Param("example") ReportQualityNewExample example);

    int updateByExample(@Param("record") ReportQualityNew record, @Param("example") ReportQualityNewExample example);
}