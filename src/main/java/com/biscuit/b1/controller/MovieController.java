package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.service.MovieSelectService;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Inject
	private MovieSelectService movieSelectService;
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(CinemaVO cinemaVO) throws Exception {
		List<MovieInfoVO> movieTitle = movieSelectService.movieTitleSelect();
		List<CinemaVO> movieLoc = movieSelectService.movieLocSelect();
		cinemaVO.setCinema_loc("서울");
		List<CinemaVO> movieCinema = movieSelectService.movieCinemaSelect(cinemaVO);
	
		ModelAndView mv = new ModelAndView();
		mv.addObject("movieTitle", movieTitle);
		mv.addObject("movieLoc", movieLoc);
		mv.addObject("movieCinema", movieCinema);
		
		mv.setViewName("movie/movieSelect");
		
		return mv;
		
	}
	

}
