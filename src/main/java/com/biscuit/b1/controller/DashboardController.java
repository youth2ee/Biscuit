package com.biscuit.b1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/bootstrap/**")
public class DashboardController {

	@RequestMapping("dashboard")
	public void dashboard() throws Exception {
	}
	
	@RequestMapping("tables")
	public void tables() throws Exception {
	}
	
	@RequestMapping("cinemaList")
	public void cinemaList() throws Exception {
	
		
	}
	
}
