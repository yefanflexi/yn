package com.szc.enterprise.web.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 
 * @类名: TokenInterceptor.java
 * @Package com.szc.enterprise.web.interceptors
 * @类描述: 防表单重复提交拦截器
 * @创建者 ZZF
 * @创建时间 2016年4月26日 上午11:16:57
 * @版本 V1.0
 */
public class TokenInterceptor extends HandlerInterceptorAdapter {

	/*
	 * 拦截方法，添加or验证token
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return true;
	}

	protected boolean handleToken(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return handleValidToken(request, response, handler);
	}

	/*
	 * 当出现一个非法令牌时调用
	 */
	protected boolean handleInvalidToken(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return false;
	}

	/*
	 * 当发现一个合法令牌时调用.
	 */
	protected boolean handleValidToken(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return true;
	}

}
