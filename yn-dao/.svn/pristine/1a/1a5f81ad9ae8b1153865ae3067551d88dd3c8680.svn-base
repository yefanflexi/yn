package com.szc.enterprise.web.dao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.ReportUserbehavior;
import com.szc.enterprise.web.model.ReportUserbehaviorExample;

public interface ReportUserbehaviorMapper extends GenericDao<ReportUserbehavior, ReportUserbehaviorExample, String>{
    int countByExample(ReportUserbehaviorExample example);

    int deleteByExample(ReportUserbehaviorExample example);

    int insert(ReportUserbehavior record);

    int insertSelective(ReportUserbehavior record);

    List<ReportUserbehavior> selectByExample(ReportUserbehaviorExample example);

    int updateByExampleSelective(@Param("record") ReportUserbehavior record, @Param("example") ReportUserbehaviorExample example);

    int updateByExample(@Param("record") ReportUserbehavior record, @Param("example") ReportUserbehaviorExample example);
}