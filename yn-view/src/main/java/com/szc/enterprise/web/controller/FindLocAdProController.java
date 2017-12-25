package com.szc.enterprise.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.szc.enterprise.web.base.BaseController;
import com.szc.enterprise.web.model.Diminfor;
import com.szc.enterprise.web.model.ResultCode;
import com.szc.enterprise.web.model.StatusCode;
import com.szc.enterprise.web.service.DimInforService;

/**
* @author liby 
* @version 创建时间：2017年11月1日 下午3:01:57
* 类说明
* 级联区域和厂商
*/
@Controller
@RequestMapping("/findLocAdPro")
public class FindLocAdProController extends BaseController {
	
	@Autowired
	private DimInforService dimInforService;
	
	@RequestMapping("locationsByplatform")
	public @ResponseBody ResultCode locationsByplatform(String platform){

		ResultCode resultCode = new ResultCode();
		List<Diminfor> diminfors_city = dimInforService.locationsByplatform(platform);
		resultCode.setCode(StatusCode.$0000);
		resultCode.setData(diminfors_city);
		return resultCode;
	}
	
	@RequestMapping("providersBylocation")
	public @ResponseBody ResultCode providersBylocation(String platform, String location){

		ResultCode resultCode = new ResultCode();
		List<Diminfor> diminfors_pro = dimInforService.providersBylocation(platform, location);
		resultCode.setCode(StatusCode.$0000);
		resultCode.setData(diminfors_pro);
		return resultCode;
	}
	@Override
	protected Class<?> getMyclass() {
		return FindLocAdProController.class;
	}

}
