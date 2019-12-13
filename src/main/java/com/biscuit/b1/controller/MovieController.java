package com.biscuit.b1.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.MovieSelectService;
import com.biscuit.b1.service.MovieService;

import oracle.net.aso.d;

@Controller
@Configuration
@PropertySource("classpath:/properties/DataSource.properties")
@RequestMapping("/movie/**")
public class MovieController {
	
	@Inject
	private MovieSelectService movieSelectService;
	@Inject
	private MovieService movieService;
	
	/*
	 * @Value("${movie.key}") private String key;
	 */
	
	@Inject
	private Environment env;
	private String key;
	
	@GetMapping("movieApiTest")
	public void movieApiTest() throws Exception {
		movieService.MovieApiTest();
	}
	
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
		//영화선택후 지역선택값 받아서 모든 영화관
		List<CinemaVO> ar = movieSelectService.movieCinemaSelect(choiceVO);
		
		//선택한 영화에 따른 영화관
		List<ChoiceVO> cr = movieSelectService.movieChoice(choiceVO);
		
		
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("common/cinema_result");
		mv.addObject("result", ar);
		mv.addObject("selectResult", cr);
		
		return mv;
	}
	
	
	@GetMapping("dateSelect")
	public ModelAndView dateSelect(ChoiceVO choiceVO) throws Exception {
		//날짜선택
		List<TimeInfoVO> movieDateSelect = movieSelectService.movieDateSelect(choiceVO);

		
		for(TimeInfoVO a : movieDateSelect){
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
			
			System.out.println(a.getTimeInfo_date());
			
			a.setYear(a.getTimeInfo_date().substring(0, 4));
			a.setMonth(a.getTimeInfo_date().substring(5, 7));
			a.setDay(a.getTimeInfo_date().substring(8));
			
			System.out.println(a.getYear());
			System.out.println(a.getMonth());
			System.out.println(a.getDay());
			
		}
		
		
		
		//theater num
		choiceVO = movieSelectService.theaterSelect(choiceVO);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/date_result");
		mv.addObject("result", movieDateSelect);
		mv.addObject("theater_num", choiceVO.getTheater_num());

		
		return mv;
	}
	
	@GetMapping("timeSelect")
	public ModelAndView timeSelect(ChoiceVO choiceVO) throws Exception {		
		List<TimeInfoVO> dateSelect =  movieSelectService.movieTimeSelect(choiceVO);
		
		for(TimeInfoVO a : dateSelect){
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
			a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
		}
		

		choiceVO.setTimeInfo_date(choiceVO.getTimeInfo_date().substring(2));
		//여기서 좌석수를 보내조야 해
		List<ChoiceVO> seatList =  movieSelectService.seatCount(choiceVO);
		
		for(ChoiceVO b : seatList) {
			System.out.println(b.getSeatCount());
			
			b.setTimeInfo_start(b.getTimeInfo_start().substring(11, 16));
			System.out.println(b.getTimeInfo_start());
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/time_result");
		mv.addObject("result", dateSelect);
		mv.addObject("seatList", seatList);
		
		return mv;
	}
	
	//movieList
	@GetMapping("movieList")
	public void movieList(Locale locale, Model model) {
		
		//api
		String key=env.getProperty("movie.key");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		//영화 db
		List<MovieInfoVO> ar = movieSelectService.movieList();
		
		
		model.addAttribute("movieList", ar);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("key", key);
	}
	
	

}