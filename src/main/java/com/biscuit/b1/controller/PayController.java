package com.biscuit.b1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MyOrderVO;
import com.biscuit.b1.model.PayInfoVO;
import com.biscuit.b1.service.PayService;
import com.biscuit.b1.service.StoreService;

@Controller
@RequestMapping("/pay/**")
public class PayController {
	@Inject
	private PayService payService;
	//@Inject
	//private StoreService storeService;
	
/*	@GetMapping(value = "marketPaySuccess")
	public ModelAndView marketPayGet(HttpServletRequest request) throws Exception {
		
		PayInfoVO payInfoVO = new PayInfoVO();
		String pg_token = request.getParameter("pg_token");
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("pay", payInfoVO);
		
		////////////
		MyOrderVO myOrderVO = new MyOrderVO();
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		
		myOrderVO.setMemberId(memberVO.getId());
		myOrderVO.setTotalAmount(payInfoVO.getAmount().getTotal());
		
		storeService.orderInsert(myOrderVO);
		
		return mv;
	}*/
	
	@GetMapping(value = "marketPaySuccess")
	public ModelAndView marketPayGet(HttpServletRequest request) throws Exception {
		
		PayInfoVO payInfoVO = new PayInfoVO();
		String pg_token = request.getParameter("pg_token");
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("pay", payInfoVO);
		
		return mv;
	}
	@GetMapping(value = "marketSuccess")
	public void marketPaySuccess(HttpServletRequest request, HttpSession session) throws Exception {
		
	}
	
	@PostMapping(value = "marketPay")
	public String marketPayPost(String[] sname, String[] sprice, String[] camount, HttpSession session) throws Exception {
		return "redirect:" + payService.marketPayReady(sname, camount, sprice, session);
	}

	
	@GetMapping(value = "kakaoPay")
	public void KakaoPayGet() throws Exception {

	}

	@PostMapping(value = "kakaoPay")
	public String KakaoPayPost(String total_amount, String quantity) throws Exception {
		System.out.println(total_amount);
		System.out.println(quantity);
		return "redirect:" + payService.KakaoPayReady(total_amount, quantity);
	}

	@GetMapping("/kakaoPaySuccess")
	public ModelAndView kakaoPaySuccess(HttpServletRequest request, HttpSession session) throws Exception {
		String bookCode = (String) session.getAttribute("allBookCode");
		String pg_token = request.getParameter("pg_token");
		String adultCount = (String) session.getAttribute("adultCount");
		String kidCount = (String) session.getAttribute("kidCount");
		ChoiceVO choiceVO = (ChoiceVO) session.getAttribute("ChoiceVO");
		PayInfoVO payInfoVO = new PayInfoVO();
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("vo", choiceVO);
		mv.addObject("bookCode", bookCode);
		mv.addObject("adultCount", adultCount);
		mv.addObject("kidCount", kidCount);
		mv.addObject("pay", payInfoVO);
		return mv;
	}

}