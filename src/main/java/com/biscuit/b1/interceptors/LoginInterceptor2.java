package com.biscuit.b1.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor2 extends HandlerInterceptorAdapter {
	// 로그인 하지 않은 사용자가 로그인 컨텐츠를 이용하지 못하게 해줌
	
	// Controller 종료후
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
	// Controller 진입전
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// true : Controller로 전송
		// false : Controller로 전송 X
		boolean result = false;
		Object obj = request.getSession().getAttribute("member");
		if(obj != null) {
			result = true;
		} else {
			response.sendRedirect("../../member/memberLogin");
		}
		return result;
	}
}
