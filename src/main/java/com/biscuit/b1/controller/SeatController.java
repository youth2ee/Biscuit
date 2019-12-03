package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.service.SeatService;

@Controller
@RequestMapping("/seat/**")

public class SeatController {
	@Inject
	private SeatService seatService;
	
	@GetMapping(value = "seatTest")
	public ModelAndView seatTest(CinemaVO cinemaVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		cinemaVO = seatService.selectCinema(cinemaVO);
		String cinema_loc = cinemaVO.getCinema_loc();
		String cinema_name = cinemaVO.getCinema_name();
		mv.addObject("cinema_loc", cinema_loc);
		mv.addObject("cinema_name", cinema_name);
		return mv;
		
	}
	@PostMapping(value="seatTest")
	public void seatTest2() throws Exception{
		
	}
}
