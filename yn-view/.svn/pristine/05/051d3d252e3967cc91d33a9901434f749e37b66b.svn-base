package com.szc.enterprise.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.szc.enterprise.web.base.BaseController;
import com.szc.enterprise.web.model.ResultCode;
import com.szc.enterprise.web.model.StatusCode;
import com.szc.enterprise.web.service.UserService;



/**
 * 用户登录
 * @author vixtel
 *
 */
@Controller
@RequestMapping("/user")
@SuppressWarnings("all")
public class LoginController extends BaseController {
	
	private Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private UserService userService;
	
	
	/**
	 * 系统用户登录
	 * @param loginName
	 * @param password
	 * @param backurl 登录拦截登录成功后返回url
	 * @param request
	 * @param response
	 * @return 
	 */
	@RequestMapping("/doLogin")
	public String Login(@RequestParam String userId,@RequestParam String password,String backurl,
			HttpServletRequest request,HttpServletResponse response) {
		logger.info("/login :useId:"+userId+",password:"+password);
		
		
		ResultCode resultCode = new ResultCode();
		if(StringUtils.isBlank(userId)||StringUtils.isBlank(password)){
			return "login";
		}
		try {
			if(userService.getUserByUserNameandPassword(userId, password)!=null) {
				
				resultCode.setCode(StatusCode.$0000);
				return "index";
			}
			
			
		} catch (Exception e) {
			
		}
			
		return "login";
		
	}
	
	
	

	@Override
	protected Class<?> getMyclass() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
