package com.szc.enterprise.web.controller;
/**
 * 质量报表：
 * 表    名 : report_quality
 */

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
import com.szc.enterprise.web.model.ReportQuality;
import com.szc.enterprise.web.model.ReportQualityNew;
import com.szc.enterprise.web.model.ReportQualityNewExample;
import com.szc.enterprise.web.model.ReportQualityNewExample.Criteria;
import com.szc.enterprise.web.service.CustomSqlService;
import com.szc.enterprise.web.service.DimInforService;
import com.szc.enterprise.web.service.ReportQualityNewService;


@Controller
@RequestMapping("/reportQuality")
public class ReportQualityController extends BaseController {

	@Autowired
	private ReportQualityNewService reportQualityNewService;
	
	@Autowired
	private DimInforService dimInforService;
	
	@Autowired
	private CustomSqlService customSqlService;
	
	/**
	 * 
	 * @param pageNo 当前页数
	 * @param pageSize 每页显示数量
	 * @param quality 
	 * @param timeType 时间维度
	 * @param beginTime
	 * @param endTime
	 * @param export
	 * @param response
	 * @return
	 */
	@RequestMapping("reportQualityList")
    @RequiresPermissions("fun_30010_100")
	public String reportQualityList(@RequestParam(value="pageNo", defaultValue="1") int pageNo, 
    		@RequestParam(value="pageSize", defaultValue="50") int pageSize, ReportQuality quality, 
    		@RequestParam(value="timeType", defaultValue="1") String timeType, String beginTime, 
    		String endTime, String platform, String location, String provider, String export, String issumQuery, 
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
        		exportAttrible5.setFiledKey("authrspsuccrate");
        		exportAttrible5.setFiledName("认证响应成功率");
        		exportAttrible5.setFiledType(1);
        		exportAttrible5.setMultiplyValue("100");
        		exportAttrible5.setExtValue("%");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("epgrspavgsec");
        		exportAttrible6.setFiledName("EPG响应平均时长");
        		exportAttrible6.setFiledType(1);
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("epgrsptimelyrate");
        		exportAttrible7.setFiledName("EPG响应及时率");
        		exportAttrible7.setFiledType(1);
        		exportAttrible7.setMultiplyValue("100");
        		exportAttrible7.setExtValue("%");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("tvfreezeuserrate");
        		exportAttrible8.setFiledName("电视卡顿总用户占比");
        		exportAttrible8.setFiledType(1);
        		exportAttrible8.setMultiplyValue("100");
        		exportAttrible8.setExtValue("%");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("liveuserfreezesecrate");
        		exportAttrible9.setFiledName("直播用户卡顿时长占比");
        		exportAttrible9.setFiledType(1);
        		exportAttrible9.setMultiplyValue("100");
        		exportAttrible9.setExtValue("%");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("voduserfreezesecrate");
        		exportAttrible10.setFiledName("点播用户卡顿时长占比");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("mdlostuserrate");
        		exportAttrible11.setFiledName("媒体丢包用户占比");
        		exportAttrible11.setFiledType(1);
        		exportAttrible11.setMultiplyValue("100");
        		exportAttrible11.setExtValue("%");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("channelchgsecsuccrate");
        		exportAttrible12.setFiledName("频道切换时长达标率");
        		exportAttrible12.setFiledType(1);
        		exportAttrible12.setMultiplyValue("100");
        		exportAttrible12.setExtValue("%");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("channelchgavgsec");
        		exportAttrible13.setFiledName("频道切换平均时长");
        		exportAttrible13.setFiledType(1);
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("vodrsptimelyrate");
        		exportAttrible14.setFiledName("点播响应及时率");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setMultiplyValue("100");
        		exportAttrible14.setExtValue("%");
        		exportAttribles.add(exportAttrible14);
        		
        		ExportAttrible exportAttrible15 = new ExportAttrible();
        		exportAttrible15.setFiledKey("backrsptimelyrate");
        		exportAttrible15.setFiledName("回看响应及时率");
        		exportAttrible15.setFiledType(1);
        		exportAttrible15.setMultiplyValue("100");
        		exportAttrible15.setExtValue("%");
        		exportAttribles.add(exportAttrible15);
        		
        		ExportAttrible exportAttrible16 = new ExportAttrible();
        		exportAttrible16.setFiledKey("vodrspavgsec");
        		exportAttrible16.setFiledName("点播响应平均时长");
        		exportAttrible16.setFiledType(1);
        		exportAttribles.add(exportAttrible16);
        		
        		ExportAttrible exportAttrible17 = new ExportAttrible();
        		exportAttrible17.setFiledKey("backrspavgsec");
        		exportAttrible17.setFiledName("回看响应平均时长");
        		exportAttrible17.setFiledType(1);
        		exportAttribles.add(exportAttrible17);
        		
        		ExportAttrible exportAttrible18 = new ExportAttrible();
        		exportAttrible18.setFiledKey("vodfviewlatenctime");
        		exportAttrible18.setFiledName("点播首屏缓冲时间");
        		exportAttrible18.setFiledType(1);
        		exportAttribles.add(exportAttrible18);
        		
        		ExportAttrible exportAttrible19 = new ExportAttrible();
        		exportAttrible19.setFiledKey("backfviewlatenctime");
        		exportAttrible19.setFiledName("回看首屏缓冲时间");
        		exportAttrible19.setFiledType(1);
        		exportAttribles.add(exportAttrible19);
        		
        		ExportAttrible exportAttrible20 = new ExportAttrible();
        		exportAttrible20.setFiledKey("tvlivecutrate");
        		exportAttrible20.setFiledName("电视直播中断率");
        		exportAttrible20.setFiledType(1);
        		exportAttrible20.setMultiplyValue("100");
        		exportAttrible20.setExtValue("%");
        		exportAttribles.add(exportAttrible20);
        		
        		ExportAttrible exportAttrible21 = new ExportAttrible();
        		exportAttrible21.setFiledKey("livecutseccount");
        		exportAttrible21.setFiledName("直播中断时长统计");
        		exportAttribles.add(exportAttrible21);
        		
        		ExportAttrible exportAttrible22 = new ExportAttrible();
        		exportAttrible22.setFiledKey("freezecount");
        		exportAttrible22.setFiledName("卡顿总次数");
        		exportAttribles.add(exportAttrible22);
	    		
        		ExportAttrible exportAttrible23 = new ExportAttrible();
        		exportAttrible23.setFiledKey("vodfreezecount");
        		exportAttrible23.setFiledName("点播卡顿次数");
        		exportAttribles.add(exportAttrible23);
        		
        		ExportAttrible exportAttrible24 = new ExportAttrible();
        		exportAttrible24.setFiledKey("backfreezecount");
        		exportAttrible24.setFiledName("回看卡顿次数");
        		exportAttribles.add(exportAttrible24);
	    		
        		ExportAttrible exportAttrible25 = new ExportAttrible();
        		exportAttrible25.setFiledKey("livefreezecount");
        		exportAttrible25.setFiledName("直播卡顿次数");
        		exportAttribles.add(exportAttrible25);
        		
        		ExportAttrible exportAttrible26 = new ExportAttrible();
        		exportAttrible26.setFiledKey("vodfreezesec");
        		exportAttrible26.setFiledName("点播卡顿时长");
        		exportAttrible26.setFiledType(1);
        		exportAttribles.add(exportAttrible26);
        		
        		ExportAttrible exportAttrible27 = new ExportAttrible();
        		exportAttrible27.setFiledKey("backfreezesec");
        		exportAttrible27.setFiledName("回看卡顿时长");
        		exportAttrible27.setFiledType(1);
        		exportAttribles.add(exportAttrible27);
        		
        		ExportAttrible exportAttrible28 = new ExportAttrible();
        		exportAttrible28.setFiledKey("livefreezesec");
        		exportAttrible28.setFiledName("直播卡顿时长");
        		exportAttrible28.setFiledType(1);
        		exportAttribles.add(exportAttrible28);
        		
        		ExportAttrible exportAttrible29 = new ExportAttrible();
        		exportAttrible29.setFiledKey("netwoklostrate");
        		exportAttrible29.setFiledName("网络丢包率");
        		exportAttrible29.setFiledType(1);
        		exportAttrible29.setMultiplyValue("100");
        		exportAttrible29.setExtValue("%");
        		exportAttribles.add(exportAttrible29);
        		
        		ExportAttrible exportAttrible30 = new ExportAttrible();
        		exportAttrible30.setFiledKey("networkavgsec");
        		exportAttrible30.setFiledName("网络平均时延");
        		exportAttrible30.setFiledType(1);
        		exportAttribles.add(exportAttrible30);
        		
        		ExportAttrible exportAttrible31 = new ExportAttrible();
        		exportAttrible31.setFiledKey("totalusermoscount");
        		exportAttrible31.setFiledName("总用户MOS指标统计");
        		exportAttrible31.setFiledType(1);
        		exportAttrible31.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible31);
        		
        		ExportAttrible exportAttrible32 = new ExportAttrible();
        		exportAttrible32.setFiledKey("vodusermoscount");
        		exportAttrible32.setFiledName("点播用户MOS指标统计");
        		exportAttrible32.setFiledType(1);
        		exportAttrible32.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible32);
        		
        		ExportAttrible exportAttrible33 = new ExportAttrible();
        		exportAttrible33.setFiledKey("backusermoscount");
        		exportAttrible33.setFiledName("回看用户MOS指标统计");
        		exportAttrible33.setFiledType(1);
        		exportAttrible33.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible33);
        		
        		ExportAttrible exportAttrible34 = new ExportAttrible();
        		exportAttrible34.setFiledKey("liveusermoscount");
        		exportAttrible34.setFiledName("直播用户MOS指标统计");
        		exportAttrible34.setFiledType(1);
        		exportAttrible34.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible34);
	    		
				//导出源
				List<ReportQualityNew> reportQualities = reportQualityNewService.reportQualitiesList(beginTime, endTime, platform, location, provider, null);
				
				//导出
				ExcelExportUtil<ReportQualityNew> excelExportUtil = new ExcelExportUtil<ReportQualityNew>(reportQualities);
				Workbook workbook = excelExportUtil.excelExport("ReportQualityNew", new ReportQualityNew(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "质量报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			
		    Page<ReportQualityNew> page = new Page<ReportQualityNew>(pageNo, pageSize);
		    reportQualityNewService.reportQualitiesList(beginTime, endTime, platform, location, provider, page);
		    
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
		    request.setAttribute("quality", quality);
		    request.setAttribute("timeType", timeType);
		    request.setAttribute("beginTime", beginTime);
		    request.setAttribute("endTime", endTime);
		    request.setAttribute("diminfors", diminfors);
		    request.setAttribute("diminfors_loc", diminfors_loc);
		    request.setAttribute("diminfors_pro", diminfors_pro);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "report/reportQuality/reportQualityList";
    }
	
	
	@RequestMapping("reportQualitySummaryList")
    @RequiresPermissions("fun_30010_100")
	public String reportQualitySummaryList(ReportQuality quality, 
    		@RequestParam(value="timeType", defaultValue="1") String timeType, String beginTime, 
    		String endTime, String platform, String location, String provider, String platform_all, String location_all, String provider_all, String export, 
    		HttpServletResponse response){
		
		String format = "yyyy-MM-dd";
		if(Util.isBlank(endTime)){
			endTime = Util.getDate(format);
		}
		if(Util.isBlank(beginTime)){
			beginTime = Util.getSumDate(endTime, -30, format);
		}
		
		//汇总查询
		ReportQualityNewExample reportQualityExample = new ReportQualityNewExample();
		Criteria criteria = reportQualityExample.createCriteria();
		//设置开始时间
		criteria.andTimestampGreaterThanOrEqualTo(Util.strToDate(beginTime, format));
		//设置结束时间
		criteria.andTimestampLessThan(Util.strToDate(Util.getSumDate(endTime, 1, format), format));
		if(!Util.isBlank(platform)){
			criteria.andPlatformEqualTo(platform);
			reportQualityExample.setPlatform(platform);
		}
		if(!Util.isBlank(location)){
			criteria.andLocationEqualTo(location);
			reportQualityExample.setLocation(location);
		}
		if(!Util.isBlank(provider)){
			criteria.andProviderEqualTo(provider);
			reportQualityExample.setProvider(provider);
		}
		if(!Util.isBlank(platform_all)){
			reportQualityExample.setPlatform_all(platform_all);
		}else{
			reportQualityExample.setPlatform_all("0");
		}
		if(!Util.isBlank(location_all)){
			reportQualityExample.setLocation_all(location_all);
		}else{
			reportQualityExample.setLocation_all("0");
		}
		if(!Util.isBlank(provider_all)){
			reportQualityExample.setProvider_all(provider_all);
		}else{
			reportQualityExample.setProvider_all("0");
		}
		
		
		try {
			
			if("true".equalsIgnoreCase(export)){
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
        		exportAttrible5.setFiledKey("authrspsuccrate");
        		exportAttrible5.setFiledName("认证响应成功率");
        		exportAttrible5.setFiledType(1);
        		exportAttrible5.setMultiplyValue("100");
        		exportAttrible5.setExtValue("%");
        		exportAttribles.add(exportAttrible5);
        		
        		ExportAttrible exportAttrible6 = new ExportAttrible();
        		exportAttrible6.setFiledKey("epgrspavgsec");
        		exportAttrible6.setFiledName("EPG响应平均时长");
        		exportAttrible6.setFiledType(1);
        		exportAttribles.add(exportAttrible6);
        		
        		ExportAttrible exportAttrible7 = new ExportAttrible();
        		exportAttrible7.setFiledKey("epgrsptimelyrate");
        		exportAttrible7.setFiledName("EPG响应及时率");
        		exportAttrible7.setFiledType(1);
        		exportAttrible7.setMultiplyValue("100");
        		exportAttrible7.setExtValue("%");
        		exportAttribles.add(exportAttrible7);
        		
        		ExportAttrible exportAttrible8 = new ExportAttrible();
        		exportAttrible8.setFiledKey("tvfreezeuserrate");
        		exportAttrible8.setFiledName("电视卡顿总用户占比");
        		exportAttrible8.setFiledType(1);
        		exportAttrible8.setMultiplyValue("100");
        		exportAttrible8.setExtValue("%");
        		exportAttribles.add(exportAttrible8);
        		
        		ExportAttrible exportAttrible9 = new ExportAttrible();
        		exportAttrible9.setFiledKey("liveuserfreezesecrate");
        		exportAttrible9.setFiledName("直播用户卡顿时长占比");
        		exportAttrible9.setFiledType(1);
        		exportAttrible9.setMultiplyValue("100");
        		exportAttrible9.setExtValue("%");
        		exportAttribles.add(exportAttrible9);
        		
        		ExportAttrible exportAttrible10 = new ExportAttrible();
        		exportAttrible10.setFiledKey("voduserfreezesecrate");
        		exportAttrible10.setFiledName("点播用户卡顿时长占比");
        		exportAttrible10.setFiledType(1);
        		exportAttrible10.setMultiplyValue("100");
        		exportAttrible10.setExtValue("%");
        		exportAttribles.add(exportAttrible10);
        		
        		ExportAttrible exportAttrible11 = new ExportAttrible();
        		exportAttrible11.setFiledKey("mdlostuserrate");
        		exportAttrible11.setFiledName("媒体丢包用户占比");
        		exportAttrible11.setFiledType(1);
        		exportAttrible11.setMultiplyValue("100");
        		exportAttrible11.setExtValue("%");
        		exportAttribles.add(exportAttrible11);
        		
        		ExportAttrible exportAttrible12 = new ExportAttrible();
        		exportAttrible12.setFiledKey("channelchgsecsuccrate");
        		exportAttrible12.setFiledName("频道切换时长达标率");
        		exportAttrible12.setFiledType(1);
        		exportAttrible12.setMultiplyValue("100");
        		exportAttrible12.setExtValue("%");
        		exportAttribles.add(exportAttrible12);
        		
        		ExportAttrible exportAttrible13 = new ExportAttrible();
        		exportAttrible13.setFiledKey("channelchgavgsec");
        		exportAttrible13.setFiledName("频道切换平均时长");
        		exportAttrible13.setFiledType(1);
        		exportAttribles.add(exportAttrible13);
        		
        		ExportAttrible exportAttrible14 = new ExportAttrible();
        		exportAttrible14.setFiledKey("vodrsptimelyrate");
        		exportAttrible14.setFiledName("点播响应及时率");
        		exportAttrible14.setFiledType(1);
        		exportAttrible14.setMultiplyValue("100");
        		exportAttrible14.setExtValue("%");
        		exportAttribles.add(exportAttrible14);
        		
        		ExportAttrible exportAttrible15 = new ExportAttrible();
        		exportAttrible15.setFiledKey("backrsptimelyrate");
        		exportAttrible15.setFiledName("回看响应及时率");
        		exportAttrible15.setFiledType(1);
        		exportAttrible15.setMultiplyValue("100");
        		exportAttrible15.setExtValue("%");
        		exportAttribles.add(exportAttrible15);
        		
        		ExportAttrible exportAttrible16 = new ExportAttrible();
        		exportAttrible16.setFiledKey("vodrspavgsec");
        		exportAttrible16.setFiledName("点播响应平均时长");
        		exportAttrible16.setFiledType(1);
        		exportAttribles.add(exportAttrible16);
        		
        		ExportAttrible exportAttrible17 = new ExportAttrible();
        		exportAttrible17.setFiledKey("backrspavgsec");
        		exportAttrible17.setFiledName("回看响应平均时长");
        		exportAttrible17.setFiledType(1);
        		exportAttribles.add(exportAttrible17);
        		
        		ExportAttrible exportAttrible18 = new ExportAttrible();
        		exportAttrible18.setFiledKey("vodfviewlatenctime");
        		exportAttrible18.setFiledName("点播首屏缓冲时间");
        		exportAttrible18.setFiledType(1);
        		exportAttribles.add(exportAttrible18);
        		
        		ExportAttrible exportAttrible19 = new ExportAttrible();
        		exportAttrible19.setFiledKey("backfviewlatenctime");
        		exportAttrible19.setFiledName("回看首屏缓冲时间");
        		exportAttrible19.setFiledType(1);
        		exportAttribles.add(exportAttrible19);
        		
        		ExportAttrible exportAttrible20 = new ExportAttrible();
        		exportAttrible20.setFiledKey("tvlivecutrate");
        		exportAttrible20.setFiledName("电视直播中断率");
        		exportAttrible20.setFiledType(1);
        		exportAttrible20.setMultiplyValue("100");
        		exportAttrible20.setExtValue("%");
        		exportAttribles.add(exportAttrible20);
        		
        		ExportAttrible exportAttrible21 = new ExportAttrible();
        		exportAttrible21.setFiledKey("livecutseccount");
        		exportAttrible21.setFiledName("直播中断时长统计");
        		exportAttribles.add(exportAttrible21);
        		
        		ExportAttrible exportAttrible22 = new ExportAttrible();
        		exportAttrible22.setFiledKey("freezecount");
        		exportAttrible22.setFiledName("卡顿总次数");
        		exportAttribles.add(exportAttrible22);
	    		
        		ExportAttrible exportAttrible23 = new ExportAttrible();
        		exportAttrible23.setFiledKey("vodfreezecount");
        		exportAttrible23.setFiledName("点播卡顿次数");
        		exportAttribles.add(exportAttrible23);
        		
        		ExportAttrible exportAttrible24 = new ExportAttrible();
        		exportAttrible24.setFiledKey("backfreezecount");
        		exportAttrible24.setFiledName("回看卡顿次数");
        		exportAttribles.add(exportAttrible24);
	    		
        		ExportAttrible exportAttrible25 = new ExportAttrible();
        		exportAttrible25.setFiledKey("livefreezecount");
        		exportAttrible25.setFiledName("直播卡顿次数");
        		exportAttribles.add(exportAttrible25);
        		
        		ExportAttrible exportAttrible26 = new ExportAttrible();
        		exportAttrible26.setFiledKey("vodfreezesec");
        		exportAttrible26.setFiledName("点播卡顿时长");
        		exportAttrible26.setFiledType(1);
        		exportAttribles.add(exportAttrible26);
        		
        		ExportAttrible exportAttrible27 = new ExportAttrible();
        		exportAttrible27.setFiledKey("backfreezesec");
        		exportAttrible27.setFiledName("回看卡顿时长");
        		exportAttrible27.setFiledType(1);
        		exportAttribles.add(exportAttrible27);
        		
        		ExportAttrible exportAttrible28 = new ExportAttrible();
        		exportAttrible28.setFiledKey("livefreezesec");
        		exportAttrible28.setFiledName("直播卡顿时长");
        		exportAttrible28.setFiledType(1);
        		exportAttribles.add(exportAttrible28);
        		
        		ExportAttrible exportAttrible29 = new ExportAttrible();
        		exportAttrible29.setFiledKey("netwoklostrate");
        		exportAttrible29.setFiledName("网络丢包率");
        		exportAttrible29.setFiledType(1);
        		exportAttrible29.setMultiplyValue("100");
        		exportAttrible29.setExtValue("%");
        		exportAttribles.add(exportAttrible29);
        		
        		ExportAttrible exportAttrible30 = new ExportAttrible();
        		exportAttrible30.setFiledKey("networkavgsec");
        		exportAttrible30.setFiledName("网络平均时延");
        		exportAttrible30.setFiledType(1);
        		exportAttribles.add(exportAttrible30);
        		
        		ExportAttrible exportAttrible31 = new ExportAttrible();
        		exportAttrible31.setFiledKey("totalusermoscount");
        		exportAttrible31.setFiledName("总用户MOS指标统计");
        		exportAttrible31.setFiledType(1);
        		exportAttrible31.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible31);
        		
        		ExportAttrible exportAttrible32 = new ExportAttrible();
        		exportAttrible32.setFiledKey("vodusermoscount");
        		exportAttrible32.setFiledName("点播用户MOS指标统计");
        		exportAttrible32.setFiledType(1);
        		exportAttrible32.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible32);
        		
        		ExportAttrible exportAttrible33 = new ExportAttrible();
        		exportAttrible33.setFiledKey("backusermoscount");
        		exportAttrible33.setFiledName("回看用户MOS指标统计");
        		exportAttrible33.setFiledType(1);
        		exportAttrible33.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible33);
        		
        		ExportAttrible exportAttrible34 = new ExportAttrible();
        		exportAttrible34.setFiledKey("liveusermoscount");
        		exportAttrible34.setFiledName("直播用户MOS指标统计");
        		exportAttrible34.setFiledType(1);
        		exportAttrible34.setFiledFormat("0.00000");
        		exportAttribles.add(exportAttrible34);
	    		
				//导出源
				List<ReportQualityNew> reportQualities = customSqlService.selectByExampleDay_rQuality_Group_new(reportQualityExample);
				
				//导出
				ExcelExportUtil<ReportQualityNew> excelExportUtil = new ExcelExportUtil<ReportQualityNew>(reportQualities);
				Workbook workbook = excelExportUtil.excelExport("ReportQualityNew", new ReportQualityNew(), exportAttribles);
				
			    
				OutputStream out = response.getOutputStream();
				String fileName = "质量汇总报表_"+Util.getDate("yyyy-MM-dd")+"_"+Util.create(10)+".xls"; // 文件名
				response.setContentType("application/x-msdownload");
				response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
				workbook.write(out);
				
				return null;
			}
			List<ReportQualityNew> reportQualities = customSqlService.selectByExampleDay_rQuality_Group_new(reportQualityExample);
			request.setAttribute("qualitySum", reportQualities);
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
		    request.setAttribute("quality", quality);
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
		
		return "report/reportQuality/reportQualitySummary";
	}
	
	
	@Override
	protected Class<?> getMyclass() {
		return ReportQualityController.class;
	}

	
}
