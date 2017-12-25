package com.szc.enterprise.web.controller;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.ExcelExportUtil;
import com.szc.common.utils.ExportAttrible;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.base.BaseController;
import com.szc.enterprise.web.model.ReportToplivechannel;
import com.szc.enterprise.web.service.ReportTopLiveChannelService;

/**
* @author liby 
* @version 创建时间：2017年11月2日 下午4:44:48
* 类说明
* 用户行为报表---子报表 直播频道访问Top10
*/
@Controller
@RequestMapping("/reportTopLiveChannel")
public class ReportTopLiveChannelController extends BaseController {
	
	@Autowired
	private ReportTopLiveChannelService reportTopLiveChannelService;

	@RequestMapping("reportTopLiveChannelList")
	public String reportTopLiveChannelList(@RequestParam(value="pageNo", defaultValue="1") int pageNo, 
    		@RequestParam(value="pageSize", defaultValue="50") int pageSize, ReportToplivechannel reportToplivechannel, 
    		@RequestParam(value="timeType", defaultValue="1") String timeType, String beginTime, 
    		String endTime,String export, HttpServletResponse response){
		
		try {
			String format = "yyyy-MM-dd";
			if(Util.isBlank(endTime)){
				endTime = Util.getDate(format);
			}
			if(Util.isBlank(beginTime)){
				beginTime = Util.getSumDate(endTime, -30, format);
			}
			
			if("true".equalsIgnoreCase(export)){
	    		//导出属性设置
        		List<ExportAttrible> exportAttribles = new ArrayList<ExportAttrible>();
        		
        		ExportAttrible exportAttrible1 = new ExportAttrible();
        		exportAttrible1.setFiledKey("timestamp");
        		exportAttrible1.setFiledName("时间");
        		exportAttrible1.setFiledType(2);
        		exportAttrible1.setFiledFormat("yyyy-MM-dd");
        		exportAttribles.add(exportAttrible1);
        		
        		ExportAttrible exportAttrible2 = new ExportAttrible();
        		exportAttrible2.setFiledKey("channelname");
        		exportAttrible2.setFiledName("频道名");
        		exportAttribles.add(exportAttrible2);
        		
        		ExportAttrible exportAttrible3 = new ExportAttrible();
        		exportAttrible3.setFiledKey("playtime");
        		exportAttrible3.setFiledName("访问时长");
        		exportAttrible3.setFiledType(1);
        		exportAttribles.add(exportAttrible3);
	    		
				//导出源
				List<ReportToplivechannel> reportTopLiveChannels = reportTopLiveChannelService.reportTopLiveChannelList(beginTime, endTime, null);
				
				//导出
				ExcelExportUtil<ReportToplivechannel> excelExportUtil = new ExcelExportUtil<ReportToplivechannel>(reportTopLiveChannels);
				Workbook workbook = excelExportUtil.excelExport("ReportTopLiveChannel", new ReportToplivechannel(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "直播频道访问TOP10_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			
		    Page<ReportToplivechannel> page = new Page<ReportToplivechannel>(pageNo, pageSize);
		    reportTopLiveChannelService.reportTopLiveChannelList(beginTime, endTime, page);
		    
		    request.setAttribute("page", page);
		    request.setAttribute("reportToplivechannel", reportToplivechannel);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "report/reportTopLiveChannel/reportTopLiveChannelList";
    }
	
	@Override
	protected Class<?> getMyclass() {
		return ReportTopLiveChannelController.class;
	}

}
