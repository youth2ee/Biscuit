package com.biscuit.b1.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CartInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("aa");
		boolean result = false;
		Object obj = request.getSession().getAttribute("member");
		
		if(obj != null) {
			result = true;
		}else {
			/*
			 * request.setAttribute("msg", "로그인이 필요한 서비스입니다.\n로그인 페이지로 이동하시겠습니까?");
			 * request.setAttribute("path1", "../member/memberLogin");
			 * request.setAttribute("path2", "./storeList"); System.out.println("bb");
			 */
			response.sendRedirect("../common/common_result2");
		}
		return result;
	}
	
}
