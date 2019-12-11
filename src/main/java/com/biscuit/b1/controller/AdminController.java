package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.AdminService;
import com.biscuit.b1.service.CinemaService;

import oracle.jdbc.proxy.annotation.Post;

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
	
	@PostMapping("adminTimeInsert")
	public ModelAndView adminTimeInsert(ChoiceVO choiceVO) {
		
		System.out.println(choiceVO.getTimeInfo_date());
		System.out.println(choiceVO.getMovieInfo_name());
		System.out.println(choiceVO.getCinema_name());
		System.out.println(choiceVO.getTheater_name());
		System.out.println(choiceVO.getCinema_num());
		
		MovieInfoVO movieInfoVO = new MovieInfoVO();
		TheaterVO theaterVO = new TheaterVO();
		
		//movieinfo_num
		movieInfoVO.setMovieInfo_title(choiceVO.getMovieInfo_name());
		choiceVO.setMovieInfo_num(adminService.movie_num(movieInfoVO).getMovieInfo_num());
		
		//theater_num
		theaterVO.setCinema_num(choiceVO.getCinema_num());
		theaterVO.setTheater_name(choiceVO.getTheater_name());
		choiceVO.setTheater_num(adminService.theater_num(theaterVO).getTheater_num());
		
		//timeinfo_date
		choiceVO.setTimeInfo_date(choiceVO.getTimeInfo_date().substring(2));
		
		System.out.println(choiceVO.getTimeInfo_date());
		System.out.println(choiceVO.getTheater_num());
		System.out.println(choiceVO.getMovieInfo_num());
		
		int result = adminService.timeInfoInsertA(choiceVO);
		
		ModelAndView mv = new ModelAndView();
		
		String msg = "시간 입력실패";
		
		if(result > 0) {
			msg = "시간 입력성공";
		} 
		
		mv.addObject("msg", msg);
		mv.addObject("path", "./admin_time");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	

	
}
