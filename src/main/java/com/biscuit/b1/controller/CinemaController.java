package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.service.CinemaService;

@Controller
@RequestMapping("/cinema/**")
public class CinemaController {
	
	@Inject
	private CinemaService cinemaService;
	
	@GetMapping("cinema_loc")
	public void cinema_loc(CinemaVO cinemaVO, Model model) {
		cinemaVO.setCinema_name("강남");
		cinemaVO = cinemaService.cinema_loc(cinemaVO);
		
		System.out.println(cinemaVO.getCinema_loc());
		
		model.addAttribute("cinemaVO", cinemaVO);
		
	}

}
