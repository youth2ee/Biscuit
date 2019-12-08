package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.MovieSelectService;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Inject
	private MovieSelectService movieSelectService;
	
	@Value("${movie.key}")
	private String key;
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(CinemaVO cinemaVO, TimeInfoVO timeInfoVO) throws Exception {
		List<MovieInfoVO> movieTitle = movieSelectService.movieTitleSelect();
		List<CinemaVO> movieLoc = movieSelectService.movieLocSelect();
		

		ModelAndView mv = new ModelAndView();
		mv.addObject("movieTitle", movieTitle);
		mv.addObject("movieLoc", movieLoc);
		
		
		mv.setViewName("movie/movieSelect");
		
		return mv;
	}
	
	@GetMapping("locSelect")
	//@ResponseBody
	public ModelAndView locSelect(ChoiceVO choiceVO) throws Exception {
		//영화선택후 지역선택값 받아서 영화관선택
		System.out.println(choiceVO.getCinema_loc());
		List<CinemaVO> ar = movieSelectService.movieCinemaSelect(choiceVO);
		
		for(CinemaVO a : ar) {
			System.out.println(a.getCinema_name());
		}
		
		System.out.println("왜 안뜨지");
		
		
		//선택한 영화에 따른 영화관
		System.out.println("시네마넘"+choiceVO.getCinema_loc());
		System.out.println("무비인포넘"+choiceVO.getMovieInfo_num());
		
		List<ChoiceVO> cr = movieSelectService.movieChoice(choiceVO);

		for(ChoiceVO c : cr) {
			System.out.println(c.getCinema_num());
		}
		
		
		
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("common/cineme_result");
		mv.addObject("result", ar);
		mv.addObject("selectResult", cr);
		
		return mv;
	}
	
	
	@GetMapping("dateSelect")
	public ModelAndView dateSelect(ChoiceVO choiceVO) throws Exception {
		//날짜선택
		System.out.println(choiceVO.getCinema_num());
		System.out.println(choiceVO.getMovieInfo_num());
		
		List<TimeInfoVO> movieDateSelect = movieSelectService.movieDateSelect(choiceVO);
		
		for(TimeInfoVO a : movieDateSelect){
			System.out.println(a.getTimeInfo_date().substring(0, 10));
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
		}
		
		//movieTimeSelect
		List<TimeInfoVO> br = movieSelectService.movieTimeSelect(choiceVO);

		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/date_result");
		mv.addObject("result", movieDateSelect);
		mv.addObject("movieResult", br);
		
		return mv;
	}
	
	@GetMapping("timeSelect")
	public ModelAndView timeSelect(ChoiceVO choiceVO) throws Exception {
		//시간선택
		/*
		 * System.out.println(theaterVO.getCinema_num());
		 * System.out.println(theaterVO.getMovieInfo_num());
		 * System.out.println(theaterVO.getTheater_num());
		 */
		
		
		List<TimeInfoVO> dateSelect =  movieSelectService.movieTimeSelect(choiceVO);
		
		for(TimeInfoVO a : dateSelect){
			System.out.println("수정"+a.getTimeInfo_date().substring(0, 10));
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
			System.out.println("수정"+a.getTimeInfo_start().substring(11, 16));
			a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/time_result");
		mv.addObject("result", dateSelect);
		
		return mv;
	}
	
	//관리자
	@GetMapping("movieSelect_admin")
	public void movieSelect_admin() {
		
	}
	
	
	
	

}