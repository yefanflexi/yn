package com.szc.enterprise.web.controller;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.szc.common.orm.mysql.Page;
import com.szc.common.utils.ExcelExportUtil;
import com.szc.common.utils.ExportAttrible;
import com.szc.common.utils.Util;
import com.szc.enterprise.web.base.BaseController;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.ReportUserbehavior;
import com.szc.enterprise.web.model.ReportUserbehaviorExample;
import com.szc.enterprise.web.model.ReportUserbehaviorExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.DimInforService;
import com.szc.enterprise.web.service.ReportUserbehaviorService;

/**
* @author 
* @version 创建时间：2017年10月27日 下午4:27:47
* 类说明
* 用户行为报表
*/
@Controller
@RequestMapping("/reportUserbehavior")
public class ReportUserbehaviorController extends BaseController {

	@Autowired
	private ReportUserbehaviorService reportUserbehaviorService;
	
	@Autowired
	private DimInforService dimInforService;
	
	@Autowired
	private CustomSqlService customSqlService;
	
	@RequestMapping("reportUserbehaviorList")
    @RequiresPermissions("fun_30010_101")
	public String reportUserbehaviorList(@RequestParam(value="pageNo", defaultValue="1") int pageNo, 
    		@RequestParam(value="pageSize", defaultValue="50") int pageSize, ReportUserbehavior userbehavior, 
    		@RequestParam(value="timeType", defaultValue="1") String timeType, String beginTime, 
    		String endTime, String platform, String location, String provider, String export, 
    		HttpServletResponse response){
		
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
        		exportAttrible2.setFiledKey("platform");
        		exportAttrible2.setFiledName("平台");
        		exportAttribles.add(exportAttrible2);
        		
        		ExportAttrible exportAttrible3 = new ExportAttrible();
        		exportAttrible3.setFiledKey("location");
        		exportAttrible3.setFiledName("地区");
        		exportAttribles.add(exportAttrible3);
        		
        		ExportAttrible exportAttrible4 = new ExportAttrible();
        		exportAttrible4.setFiledKey("provider");
        		exportAttrible4.setFiledName("厂商");
        		exportAttribles.add(exportAttrible4);
        		
        		ExportAttrible exportAttrible5 = new ExportAttrible();
        		exportAttrible5.setFiledKey("liveusercount");
        		exportAttrible5.setFiledName("直播用户数");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("liveuserrate");
        		exportAttrible6.setFiledName("直播用户占比");
        		exportAttrible6.setFiledType(1);
        		exportAttrible6.setMultiplyValue("100");
        		exportAttrible6.setExtValue("%");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("vodusercount");
        		exportAttrible7.setFiledName("点播用户数");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("voduserrate");
        		exportAttrible8.setFiledName("点播用户占比");
        		exportAttrible8.setFiledType(1);
        		exportAttrible8.setMultiplyValue("100");
        		exportAttrible8.setExtValue("%");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("backusercount");
        		exportAttrible9.setFiledName("回看观看用户数");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("backuserrate");
        		exportAttrible10.setFiledName("回看观看用户占比");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("liveviewsec");
        		exportAttrible11.setFiledName("直播观看时长");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("vodviewsec");
        		exportAttrible12.setFiledName("点播观看时长");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("totalviewsec");
        		exportAttrible13.setFiledName("总播放时长");
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("avgviewsec");
        		exportAttrible14.setFiledName("平均播放时长");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible14);
        		
        		ExportAttrible exportAttrible15 = new ExportAttrible();
        		exportAttrible15.setFiledKey("useronlinesec");
        		exportAttrible15.setFiledName("用户在线总时长");
        		exportAttribles.add(exportAttrible15);
        		
				//导出源
				List<ReportUserbehavior> reportUserbehaviors = 
						reportUserbehaviorService.reportUserbehaviorList(
								beginTime, endTime, platform, location, provider, null);
				
				//导出
				ExcelExportUtil<ReportUserbehavior> excelExportUtil = new ExcelExportUtil<ReportUserbehavior>(reportUserbehaviors);
				Workbook workbook = excelExportUtil.excelExport("ReportUserbehavior", new ReportUserbehavior(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "用户行为报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			
		    Page<ReportUserbehavior> page = new Page<ReportUserbehavior>(pageNo, pageSize);
		    reportUserbehaviorService.reportUserbehaviorList(beginTime, endTime, platform, location, provider, page);
		    
		    //查找平台
			List<Diminfor> diminfors = dimInforService.selectPlatforms();
			
			//查找区域
			List<Diminfor> diminfors_loc = new ArrayList<Diminfor>();
//			if(!Util.isBlank(platform)){
			diminfors_loc = dimInforService.locationsByplatform(platform);
//			}
			//查找厂商
			List<Diminfor> diminfors_pro = new ArrayList<Diminfor>();;
//			if(!Util.isBlank(location)){
			diminfors_pro = dimInforService.providersBylocation(platform, location);
//			}
			
		    request.setAttribute("page", page);
		    request.setAttribute("userbehavior", userbehavior);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		    request.setAttribute("diminfors", diminfors);
		    request.setAttribute("diminfors_loc", diminfors_loc);
		    request.setAttribute("diminfors_pro", diminfors_pro);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "report/reportUserbehavior/reportUserbehaviorList";
    }
	
	@RequestMapping("reportUserbehaviorSummaryList")
    @RequiresPermissions("fun_30010_100")
	public String reportUserbehaviorSummaryList(ReportUserbehavior userbehavior, 
    		@RequestParam(value="timeType", defaultValue="1") String timeType, String beginTime, 
    		String endTime, String platform, String location, String provider, String platform_all, 
    		String location_all, String provider_all, String export, 
    		HttpServletResponse response){
		
		String format = "yyyy-MM-dd";
		if(Util.isBlank(endTime)){
			endTime = Util.getDate(format);
		}
		if(Util.isBlank(beginTime)){
			beginTime = Util.getSumDate(endTime, -30, format);
		}
		
		//汇总查询
		ReportUserbehaviorExample reportUserbehaviorExample = new ReportUserbehaviorExample();
		Criteria criteria = reportUserbehaviorExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginTime, format));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endTime, 1, format), format));
		if(!Util.isBlank(platform)){
			criteria.andPlatformEqualTo(platform);
			reportUserbehaviorExample.setPlatform(platform);
		}
		if(!Util.isBlank(location)){
			criteria.andLocationEqualTo(location);
			reportUserbehaviorExample.setLocation(location);
		}
		if(!Util.isBlank(provider)){
			criteria.andProviderEqualTo(provider);
			reportUserbehaviorExample.setProvider(provider);
		}
		if(!Util.isBlank(platform_all)){
			reportUserbehaviorExample.setPlatform_all(platform_all);
		}else{
			reportUserbehaviorExample.setPlatform_all("0");
		}
		if(!Util.isBlank(location_all)){
			reportUserbehaviorExample.setLocation_all(location_all);
		}else{
			reportUserbehaviorExample.setLocation_all("0");
		}
		if(!Util.isBlank(provider_all)){
			reportUserbehaviorExample.setProvider_all(provider_all);
		}else{
			reportUserbehaviorExample.setProvider_all("0");
		}
		
		try {
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
        		exportAttrible2.setFiledKey("platform");
        		exportAttrible2.setFiledName("平台");
        		exportAttribles.add(exportAttrible2);
        		
        		ExportAttrible exportAttrible3 = new ExportAttrible();
        		exportAttrible3.setFiledKey("location");
        		exportAttrible3.setFiledName("地区");
        		exportAttribles.add(exportAttrible3);
        		
        		ExportAttrible exportAttrible4 = new ExportAttrible();
        		exportAttrible4.setFiledKey("provider");
        		exportAttrible4.setFiledName("厂商");
        		exportAttribles.add(exportAttrible4);
        		
        		ExportAttrible exportAttrible5 = new ExportAttrible();
        		exportAttrible5.setFiledKey("liveusercount");
        		exportAttrible5.setFiledName("直播用户数");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("liveuserrate");
        		exportAttrible6.setFiledName("直播用户占比");
        		exportAttrible6.setFiledType(1);
        		exportAttrible6.setMultiplyValue("100");
        		exportAttrible6.setExtValue("%");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("vodusercount");
        		exportAttrible7.setFiledName("点播用户数");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("voduserrate");
        		exportAttrible8.setFiledName("点播用户占比");
        		exportAttrible8.setFiledType(1);
        		exportAttrible8.setMultiplyValue("100");
        		exportAttrible8.setExtValue("%");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("backusercount");
        		exportAttrible9.setFiledName("回看观看用户数");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("backuserrate");
        		exportAttrible10.setFiledName("回看观看用户占比");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("liveviewsec");
        		exportAttrible11.setFiledName("直播观看时长");
        		exportAttrible11.setFiledType(1);
        		exportAttrible11.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("vodviewsec");
        		exportAttrible12.setFiledName("点播观看时长");
        		exportAttrible12.setFiledType(1);
        		exportAttrible12.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("totalviewsec");
        		exportAttrible13.setFiledName("总播放时长");
        		exportAttrible13.setFiledType(1);
        		exportAttrible13.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("avgviewsec");
        		exportAttrible14.setFiledName("平均播放时长");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible14);
        		
        		ExportAttrible exportAttrible15 = new ExportAttrible();
        		exportAttrible15.setFiledKey("useronlinesec");
        		exportAttrible15.setFiledName("用户在线总时长");
        		exportAttrible15.setFiledType(1);
        		exportAttrible15.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible15);
        		
				//导出源
				List<ReportUserbehavior> reportUserbehaviors = 
						customSqlService.selectByExampleDay_rUserbehavior_Group(reportUserbehaviorExample);				
				//导出
				ExcelExportUtil<ReportUserbehavior> excelExportUtil = new ExcelExportUtil<ReportUserbehavior>(reportUserbehaviors);
				Workbook workbook = excelExportUtil.excelExport("ReportUserbehavior", new ReportUserbehavior(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "用户行为汇总报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			List<ReportUserbehavior> reportUserbehaviors = customSqlService.selectByExampleDay_rUserbehavior_Group(reportUserbehaviorExample);
			request.setAttribute("userbehaviorSum", reportUserbehaviors);
			  //查找平台
			List<Diminfor> diminfors = dimInforService.selectPlatforms();
		    //查找区域
			List<Diminfor> diminfors_loc = new ArrayList<Diminfor>();
//			if(!Util.isBlank(platform)){
				diminfors_loc = dimInforService.locationsByplatform(platform);
//			}
			//查找厂商
			List<Diminfor> diminfors_pro = new ArrayList<Diminfor>();;
//			if(!Util.isBlank(location)){
				diminfors_pro = dimInforService.providersBylocation(platform, location);
//			}
		    request.setAttribute("userbehavior", userbehavior);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		    request.setAttribute("platform_all", platform_all);
		    request.setAttribute("location_all", location_all);
		    request.setAttribute("provider_all", provider_all);
		    request.setAttribute("diminfors", diminfors);
		    request.setAttribute("diminfors_loc", diminfors_loc);
		    request.setAttribute("diminfors_pro", diminfors_pro);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "report/reportUserbehavior/reportUserbehaviorSummary";
	}
	
	@Override
	protected Class<?> getMyclass() {
		return ReportUserbehavior.class;
	}

}
