package com.biscuit.b1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biscuit.b1.model.ChoiceVO;

@Controller
@RequestMapping("/seat/**")

public class SeatController {
	
	@GetMapping(value = "seatTest")
	public void seatTest(ChoiceVO choiceVO) throws Exception {
		System.out.println("hi");
		System.out.println(choiceVO.getCinema_loc());
		
		
		
	}
	
	@PostMapping(value="seatTest")
	public void seatTest2() throws Exception{
		
	}
}
