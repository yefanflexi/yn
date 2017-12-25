package com.szc.enterprise.web.base;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.szc.common.utils.StringEscapeEditor;

public abstract class BaseController {
	@Autowired
	protected HttpServletRequest request;

	protected final Logger log = Logger.getLogger(getClass());

	
	@InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        /**
         * 自动转换日期类型的字段格式
         */
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
        /**
         * 防止XSS攻击
         */
        binder.registerCustomEditor(String.class, new StringEscapeEditor());
    }
	
	/**
	 * 输出info级别log
	 * 
	 * @param message
	 */
	protected void printInfoLog(String message) {
		log.info(message);
	}

	/**
	 * 输出error级别log
	 * 
	 * @param message
	 */
	protected void printErrorLog(String message) {
		log.error(message);
	}

	/**
	 * 输出debug级别log
	 * 
	 * @param message
	 */
	protected void printDebugLog(String message) {
		log.debug(message);
	}

	/**
	 * 输入类名
	 * 
	 * @return
	 */
	protected abstract Class<?> getMyclass();

}
