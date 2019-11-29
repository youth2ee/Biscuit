package com.biscuit.b1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.PayInfoVO;
import com.biscuit.b1.service.PayService;

@Controller
@RequestMapping("/pay/**")
public class PayController {
	@Inject
	private PayService payService;

	@GetMapping(value = "KakaoLogin")
	public void kakaoLogin() throws Exception {
	}

	@GetMapping(value = "kakaoPay")
	public void payTest() throws Exception {
	}

	@PostMapping(value = "kakaoPay")
	public String payTest2() throws Exception {
		return "redirect:" + payService.KakaoPayReady();
	}

	@GetMapping("/kakaoPaySuccess")
	public ModelAndView kakaoPaySuccess(HttpServletRequest request) throws Exception {
		String pg_token = request.getParameter("pg_token");
		PayInfoVO payInfoVO = new PayInfoVO();
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("pay", payInfoVO);
		return mv;
	}

}
