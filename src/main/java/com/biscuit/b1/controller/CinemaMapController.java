package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biscuit.b1.service.CinemaMapService;

@Controller
@RequestMapping("/cinema/**")
public class CinemaMapController {

	@Inject
	private CinemaMapService cinemaMapService;
	
	@GetMapping(value="cinema_map")
	public void cinemaMapTest() throws Exception{
		cinemaMapService.cinemaMapTest();
	}
	
}
