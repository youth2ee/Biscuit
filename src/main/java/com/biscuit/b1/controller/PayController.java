package com.biscuit.b1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biscuit.b1.model.KakaoPayVO;
import com.biscuit.b1.service.PayService;

@Controller
@RequestMapping("/pay/**")
public class PayController {
	private PayService payService;


	@GetMapping(value = "KakaoLogin")
	public void kakaoLogin() throws Exception {
	}

	@GetMapping(value = "payTest")
	public void payTest() throws Exception {
	}

	@PostMapping(value = "payTest")
	public void payTest2() throws Exception {

		// return "redirect:" + payService.kakaoPayTest();
	}
}
