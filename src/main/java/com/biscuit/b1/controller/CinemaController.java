package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.service.CinemaService;

@Controller
@RequestMapping("/cinema/**")
public class CinemaController {
	
	@Inject
	private CinemaService cinemaService;
	
	
	@GetMapping("cinemaList")
	public void cinemaLoc(CinemaVO cinemaVO, Model model) {
		//cinema 지역받기
		List<CinemaVO> ar =  cinemaService.cinemaList_loc();
		
		//cinema 지역에 따른 영화관 받기
		List<CinemaVO> br = cinemaService.cinemaList_cinema();	
		
		model.addAttribute("locList", ar);
		model.addAttribute("cinemaList", br);
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @GetMapping(value = "cinemaAdd", produces = "application/text; charset=utf8")
	 * public String cinemaAdd(CinemaVO cinemaVO) { //cinema 이름 받아서 주소 보내주기
	 * if(cinemaVO.getCinema_name() == null) { cinemaVO.setCinema_name("강남"); }
	 * cinemaVO = cinemaService.cinema_loc(cinemaVO);
	 * 
	 * System.out.println(cinemaVO.getCinema_name());
	 * System.out.println(cinemaVO.getCinema_add());
	 * 
	 * return cinemaVO.getCinema_add(); }
	 */
	
	@ResponseBody
	@GetMapping(value = "cinemaAdd")
	public CinemaVO cinemaAdd(CinemaVO cinemaVO) {
		//cinema 이름 받아서 주소 보내주기
		if(cinemaVO.getCinema_name() == null) {
			cinemaVO.setCinema_name("강남");	
		}
		cinemaVO = cinemaService.cinema_loc(cinemaVO);
		
		return cinemaVO;
	}
	
	
	
	/*
	 * @GetMapping("cinemaInfo") public ModelAndView cinemaInfo(CinemaVO cinemaVO) {
	 * 
	 * //cinema 영화관에 따른 정보받기 cinemaVO = cinemaService.cinemaInfo(cinemaVO);
	 * 
	 * System.out.println(cinemaVO.getCinema_name());
	 * System.out.println(cinemaVO.getCinema_add());
	 * System.out.println(cinemaVO.getCinema_tel());
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.addObject("cinemaInfo", cinemaVO);
	 * mv.setViewName("common/cinemaInfo_result");
	 * 
	 * return mv; }
	 */
	
	
	  @GetMapping("cinemaTime")
	  public ModelAndView cinemaTime(ChoiceVO choiceVO) {
	  
	  List<ChoiceVO> timelist = cinemaService.cinemaTime(choiceVO);
	  
	  for(ChoiceVO a : timelist) {		  
		  a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
		  a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
	  }
	  
	  
	  ModelAndView mv = new ModelAndView();
	  mv.addObject("timelist", timelist);
	  mv.setViewName("common/cinemaTime_result");
	  
	  return mv;
	  }
	 
	
}
