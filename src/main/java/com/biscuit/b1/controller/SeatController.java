package com.biscuit.b1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/seat/**")

public class SeatController {
	
	@GetMapping(value = "seatTest")
	public void seatTest() throws Exception {
	}
}
