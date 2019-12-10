package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.service.AdminService;
import com.biscuit.b1.service.CinemaService;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	
	 @Inject 
	 private AdminService adminService;
	 
	
	
	@GetMapping("admin_cinema")
	public void movieSelect_admin_cinema() {
	}
	
	@GetMapping("admin_time")
	public void movieSelect_admin_time() {
	}
	
	@GetMapping("adminLocSelect")
	public ModelAndView adminLocSelect(CinemaVO cinemaVO) {
		List<CinemaVO> ar = adminService.adminLocSelect(cinemaVO);
		
		for(CinemaVO a:ar) {
			a.getCinema_num();
		}
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("cinemaList", ar);
		mv.setViewName("/common/adminCinema_result");
		
		return mv;
	}
	
	
}
