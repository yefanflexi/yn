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
import com.szc.enterprise.web.model.ReportExpert;
import com.szc.enterprise.web.model.ReportExpertExample;
import com.szc.enterprise.web.model.ReportExpertExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.DimInforService;
import com.szc.enterprise.web.service.ReportExpertService;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午10:01:08
* 类说明
* 故障报表
*/
@Controller
@RequestMapping("/reportExpert")
public class ReportExpertController extends BaseController {

	@Autowired
	private ReportExpertService reportExpertService;
	
	@Autowired
	private DimInforService dimInforService;
	
	@Autowired
	private CustomSqlService customSqlService;
	
	@RequestMapping("reportExpertList")
    @RequiresPermissions("fun_30010_102")
	public String reportExpertList(@RequestParam(value="pageNo", defaultValue="1") int pageNo, 
    		@RequestParam(value="pageSize", defaultValue="50") int pageSize, ReportExpert expert, 
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
        		exportAttrible5.setFiledKey("deviceexpertcount");
        		exportAttrible5.setFiledName("终端类故障统计");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("networkexpertcount");
        		exportAttrible6.setFiledName("网络故障统计");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("epgrspslowcount");
        		exportAttrible7.setFiledName("EPG响应慢用户数");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("vodsourceproblem");
        		exportAttrible8.setFiledName("点播片源问题");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("liveabnormalusercount");
        		exportAttrible9.setFiledName("直播异常用户数");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("liveabnormaluserrate");
        		exportAttrible10.setFiledName("直播异常用户比率");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("vodabnormalusercount");
        		exportAttrible11.setFiledName("点播异常用户数");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("vodabnormaluserrate");
        		exportAttrible12.setFiledName("点播异常用户比率");
        		exportAttrible12.setFiledType(1);
        		exportAttrible12.setMultiplyValue("100");
        		exportAttrible12.setExtValue("%");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("autfailusercount");
        		exportAttrible13.setFiledName("鉴权失败用户数");
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("autfailuserrate");
        		exportAttrible14.setFiledName("鉴权失败用户比率");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setMultiplyValue("100");
        		exportAttrible14.setExtValue("%");
        		exportAttribles.add(exportAttrible14);
        		
				//导出源
				List<ReportExpert> reportExperts = 
						reportExpertService.reportExpertList(
								beginTime, endTime, platform, location, provider, null);
				
				//导出
				ExcelExportUtil<ReportExpert> excelExportUtil = new ExcelExportUtil<ReportExpert>(reportExperts);
				Workbook workbook = excelExportUtil.excelExport("ReportExpert", new ReportExpert(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "故障报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			
		    Page<ReportExpert> page = new Page<ReportExpert>(pageNo, pageSize);
		    reportExpertService.reportExpertList(beginTime, endTime, platform, location, provider, page);
		    
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
		    request.setAttribute("expert", expert);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		    request.setAttribute("diminfors", diminfors);
		    request.setAttribute("diminfors_loc", diminfors_loc);
		    request.setAttribute("diminfors_pro", diminfors_pro);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "report/reportExpert/reportExpertList";
    }
	
	@RequestMapping("reportExpertSummaryList")
    @RequiresPermissions("fun_30010_100")
	public String reportExpertSummaryList(ReportExpert reportExpert, 
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
		ReportExpertExample reportExpertExample = new ReportExpertExample();
		Criteria criteria = reportExpertExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginTime, format));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endTime, 1, format), format));
		if(!Util.isBlank(platform)){
			criteria.andPlatformEqualTo(platform);
			reportExpertExample.setPlatform(platform);
		}
		if(!Util.isBlank(location)){
			criteria.andLocationEqualTo(location);
			reportExpertExample.setLocation(location);
		}
		if(!Util.isBlank(provider)){
			criteria.andProviderEqualTo(provider);
			reportExpertExample.setProvider(provider);
		}
		if(!Util.isBlank(platform_all)){
			reportExpertExample.setPlatform_all(platform_all);
		}else{
			reportExpertExample.setPlatform_all("0");
		}
		if(!Util.isBlank(location_all)){
			reportExpertExample.setLocation_all(location_all);
		}else{
			reportExpertExample.setLocation_all("0");
		}
		if(!Util.isBlank(provider_all)){
			reportExpertExample.setProvider_all(provider_all);
		}else{
			reportExpertExample.setProvider_all("0");
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
        		exportAttrible5.setFiledKey("deviceexpertcount");
        		exportAttrible5.setFiledName("终端类故障统计");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("networkexpertcount");
        		exportAttrible6.setFiledName("网络故障统计");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("epgrspslowcount");
        		exportAttrible7.setFiledName("EPG响应慢用户数");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("vodsourceproblem");
        		exportAttrible8.setFiledName("点播片源问题");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("liveabnormalusercount");
        		exportAttrible9.setFiledName("直播异常用户数");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("liveabnormaluserrate");
        		exportAttrible10.setFiledName("直播异常用户比率");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("vodabnormalusercount");
        		exportAttrible11.setFiledName("点播异常用户数");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("vodabnormaluserrate");
        		exportAttrible12.setFiledName("点播异常用户比率");
        		exportAttrible12.setFiledType(1);
        		exportAttrible12.setMultiplyValue("100");
        		exportAttrible12.setExtValue("%");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("autfailusercount");
        		exportAttrible13.setFiledName("鉴权失败用户数");
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("autfailuserrate");
        		exportAttrible14.setFiledName("鉴权失败用户比率");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setMultiplyValue("100");
        		exportAttrible14.setExtValue("%");
        		exportAttribles.add(exportAttrible14);
        		
				//导出源
				List<ReportExpert> reportExperts = 
						customSqlService.selectByExampleDay_rExpert_Group(reportExpertExample);
				
				//导出
				ExcelExportUtil<ReportExpert> excelExportUtil = new ExcelExportUtil<ReportExpert>(reportExperts);
				Workbook workbook = excelExportUtil.excelExport("ReportExpert", new ReportExpert(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "故障汇总报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			List<ReportExpert> reportExperts = customSqlService.selectByExampleDay_rExpert_Group(reportExpertExample);
			request.setAttribute("reportExpertSum", reportExperts);
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
		    request.setAttribute("reportExpert", reportExpert);
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
		return "report/reportExpert/reportExpertSummary";
	}
	
	@Override
	protected Class<?> getMyclass() {
		return ReportExpertController.class;
	}

}
