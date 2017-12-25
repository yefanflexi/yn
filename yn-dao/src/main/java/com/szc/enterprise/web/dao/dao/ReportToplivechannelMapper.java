package com.szc.enterprise.web.dao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.szc.common.generic.GenericDao;
import com.szc.enterprise.web.model.ReportToplivechannel;
import com.szc.enterprise.web.model.ReportToplivechannelExample;

public interface ReportToplivechannelMapper extends GenericDao<ReportToplivechannel, ReportToplivechannelExample, String> {
    int countByExample(ReportToplivechannelExample example);

    int deleteByExample(ReportToplivechannelExample example);

    int insert(ReportToplivechannel record);

    int insertSelective(ReportToplivechannel record);

    List<ReportToplivechannel> selectByExample(ReportToplivechannelExample example);

    int updateByExampleSelective(@Param("record") ReportToplivechannel record, @Param("example") ReportToplivechannelExample example);

    int updateByExample(@Param("record") ReportToplivechannel record, @Param("example") ReportToplivechannelExample example);
}