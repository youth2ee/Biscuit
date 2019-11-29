package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biscuit.b1.service.PayService;

@Controller
@RequestMapping("/pay/**")
public class PayController {
	@Inject
	private PayService payService;

	@GetMapping(value = "KakaoLogin")
	public void kakaoLogin() throws Exception {
	}

	@GetMapping(value = "payTest")
	public void payTest3() throws Exception {
	}
	@PostMapping(value = "payTest")
	@ResponseBody
	public void payTest4() throws Exception {
	}
	@GetMapping(value = "payTest2")
	public void payTest() throws Exception {
	}

	@PostMapping(value = "payTest2")
	public void payTest2() throws Exception {
		payService.KakaoPayTest();
		//return "redirect:" + payService.kakaoPayTest();
	}
	@GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) throws Exception {
		payService.KakaoPayTest2(pg_token);
    }
    
}
