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

	@RequestMapping("404")
	public void error() throws Exception {
	}
	@RequestMapping("blank")
	public void blank() throws Exception {
	}
	@RequestMapping("buttons")
	public void buttons() throws Exception {
	}
	@RequestMapping("cards")
	public void cards() throws Exception {
	}
	@RequestMapping("charts")
	public void charts() throws Exception {
	}
	@RequestMapping("forgot-password")
	public void forgot_password() throws Exception {
	}
	@RequestMapping("login")
	public void login() throws Exception {
	}
	@RequestMapping("register")
	public void register() throws Exception {
	}
	@RequestMapping("utilities-animation")
	public void utilities_animation() throws Exception {
	}
	@RequestMapping("utilities-border")
	public void utilities_border() throws Exception {
	}
	@RequestMapping("utilities-color")
	public void utilities_color() throws Exception {
	}
	@RequestMapping("utilities-other")
	public void utilities_other() throws Exception {
	}
}
