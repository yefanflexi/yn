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
import com.szc.enterprise.web.model.ReportProbeper;
import com.szc.enterprise.web.model.ReportProbeperExample;
import com.szc.enterprise.web.model.ReportProbeperExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.DimInforService;
import com.szc.enterprise.web.service.ReportProbeperService;

/**
* @author liby 
* @version 创建时间：2017年10月30日 上午10:57:51
* 类说明
* 终端机顶盒性能报表
*/
@Controller
@RequestMapping("/reportProbeper")
public class ReportProbeperController extends BaseController {

	@Autowired
	private ReportProbeperService reportProbeperService;
	
	@Autowired
	private DimInforService dimInforService;
	
	@Autowired
	private CustomSqlService customSqlService;
	
	@RequestMapping("reportProbeperList")
    @RequiresPermissions("fun_30010_103")
	public String reportProbeperList(@RequestParam(value="pageNo", defaultValue="1") int pageNo, 
    		@RequestParam(value="pageSize", defaultValue="50") int pageSize, ReportProbeper probeper, 
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
        		exportAttrible5.setFiledKey("usedcpu");
        		exportAttrible5.setFiledName("CPU使用率");
        		exportAttrible5.setFiledType(1);
        		exportAttrible5.setMultiplyValue("100");
        		exportAttrible5.setExtValue("%");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("usedmem");
        		exportAttrible6.setFiledName("内存使用率");
        		exportAttrible6.setFiledType(1);
        		exportAttrible6.setMultiplyValue("100");
        		exportAttrible6.setExtValue("%");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("channelchgsec");
        		exportAttrible7.setFiledName("频道切换时长");
        		exportAttrible7.setFiledType(1);
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("bootupsec");
        		exportAttrible8.setFiledName("开机启动时长");
        		exportAttrible8.setFiledType(1);
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("vodlatencsec");
        		exportAttrible9.setFiledName("点播缓冲时长");
        		exportAttrible9.setFiledType(1);
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("egprspsec");
        		exportAttrible10.setFiledName("EGP响应时长");
        		exportAttrible10.setFiledType(1);
        		exportAttribles.add(exportAttrible10);
        		
				//导出源
				List<ReportProbeper> reportProbepers = 
						reportProbeperService.reportProbeperList(
								beginTime, endTime, platform, location, provider, null);
				
				//导出
				ExcelExportUtil<ReportProbeper> excelExportUtil = new ExcelExportUtil<ReportProbeper>(reportProbepers);
				Workbook workbook = excelExportUtil.excelExport("ReportProbeper", new ReportProbeper(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "终端机顶盒性能报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			
		    Page<ReportProbeper> page = new Page<ReportProbeper>(pageNo, pageSize);
		    reportProbeperService.reportProbeperList(beginTime, endTime, platform, location, provider, page);
		   
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
		    request.setAttribute("probeper", probeper);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		    request.setAttribute("diminfors", diminfors);
		    request.setAttribute("diminfors_loc", diminfors_loc);
		    request.setAttribute("diminfors_pro", diminfors_pro);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "report/reportProbeper/reportProbeperList";
    }
	
	@RequestMapping("reportProbeperSummaryList")
    @RequiresPermissions("fun_30010_100")
	public String reportProbeperSummaryList(ReportProbeper reportProbeper, 
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
		ReportProbeperExample reportProbeperExample = new ReportProbeperExample();
		Criteria criteria = reportProbeperExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginTime, format));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endTime, 1, format), format));
		if(!Util.isBlank(platform)){
			criteria.andPlatformEqualTo(platform);
			reportProbeperExample.setPlatform(platform);
		}
		if(!Util.isBlank(location)){
			criteria.andLocationEqualTo(location);
			reportProbeperExample.setLocation(location);
		}
		if(!Util.isBlank(provider)){
			criteria.andProviderEqualTo(provider);
			reportProbeperExample.setProvider(provider);
		}
		if(!Util.isBlank(platform_all)){
			reportProbeperExample.setPlatform_all(platform_all);
		}else{
			reportProbeperExample.setPlatform_all("0");
		}
		if(!Util.isBlank(location_all)){
			reportProbeperExample.setLocation_all(location_all);
		}else{
			reportProbeperExample.setLocation_all("0");
		}
		if(!Util.isBlank(provider_all)){
			reportProbeperExample.setProvider_all(provider_all);
		}else{
			reportProbeperExample.setProvider_all("0");
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
        		exportAttrible5.setFiledKey("usedcpu");
        		exportAttrible5.setFiledName("CPU使用率");
        		exportAttrible5.setFiledType(1);
        		exportAttrible5.setMultiplyValue("100");
        		exportAttrible5.setExtValue("%");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("usedmem");
        		exportAttrible6.setFiledName("内存使用率");
        		exportAttrible6.setFiledType(1);
        		exportAttrible6.setMultiplyValue("100");
        		exportAttrible6.setExtValue("%");
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("channelchgsec");
        		exportAttrible7.setFiledName("频道切换时长");
        		exportAttrible7.setFiledType(1);
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("bootupsec");
        		exportAttrible8.setFiledName("开机启动时长");
        		exportAttrible8.setFiledType(1);
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("vodlatencsec");
        		exportAttrible9.setFiledName("点播缓冲时长");
        		exportAttrible9.setFiledType(1);
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("egprspsec");
        		exportAttrible10.setFiledName("EGP响应时长");
        		exportAttrible10.setFiledType(1);
        		exportAttribles.add(exportAttrible10);
        		
				//导出源
				List<ReportProbeper> reportProbepers = 
						customSqlService.selectByExampleDay_rProbeper_Group(reportProbeperExample);
				
				//导出
				ExcelExportUtil<ReportProbeper> excelExportUtil = new ExcelExportUtil<ReportProbeper>(reportProbepers);
				Workbook workbook = excelExportUtil.excelExport("ReportProbeper", new ReportProbeper(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "终端机顶盒性能汇总报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			List<ReportProbeper> reportProbepers = customSqlService.selectByExampleDay_rProbeper_Group(reportProbeperExample);
			request.setAttribute("reportProbeperSum", reportProbepers);
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
		    request.setAttribute("reportProbeper", reportProbeper);
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
		return "report/reportProbeper/reportProbeperSummary";
	}
	
	@Override
	protected Class<?> getMyclass() {
		return ReportProbeperController.class;
	}

}
