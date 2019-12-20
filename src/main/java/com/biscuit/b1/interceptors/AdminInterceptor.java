package com.biscuit.b1.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.biscuit.b1.model.MemberVO;

@Component
public class AdminInterceptor extends HandlerInterceptorAdapter {
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		MemberVO memberVO = (MemberVO) request.getSession().getAttribute("member");
		Object obj = request.getSession().getAttribute("member");
		
		if (obj != null) {
			if (!(memberVO.getGrade() == 6)) {
				modelAndView.addObject("msg", "잘못된 접근입니다.");
				modelAndView.addObject("path", "../");
				modelAndView.setViewName("common/common_result");
			}
			System.out.println(memberVO.getId() + "로그인 됨");
		}
		else {
			modelAndView.addObject("msg", "잘못된 접근입니다.");
			modelAndView.addObject("path", "../");
			modelAndView.setViewName("common/common_result");
			System.out.println("로그인 안됨");
		}
	}
}

/*
 * package com.biscuit.b1.interceptors;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.stereotype.Component; import
 * org.springframework.web.servlet.ModelAndView; import
 * org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
 * 
 * import com.biscuit.b1.model.MemberVO;
 * 
 * @Component public class AdminInterceptor extends HandlerInterceptorAdapter {
 * 
 * @Override public void postHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler, ModelAndView modelAndView)
 * throws Exception { MemberVO memberVO = (MemberVO)
 * request.getSession().getAttribute("member"); Object obj =
 * request.getSession().getAttribute("member");
 * 
 * if (obj != null) { if (!memberVO.getId().equals("admin")) {
 * modelAndView.addObject("msg", "잘못된 접근입니다."); modelAndView.addObject("path",
 * "../"); modelAndView.setViewName("common/common_result"); }
 * System.out.println(memberVO.getId() + "로그인 됨"); } else {
 * modelAndView.addObject("msg", "잘못된 접근입니다."); modelAndView.addObject("path",
 * "../"); modelAndView.setViewName("common/common_result");
 * System.out.println("로그인 안됨"); } } }
 */
