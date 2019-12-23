package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.AdminVO;
import com.biscuit.b1.model.CartVO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.AdminService;
import com.biscuit.b1.service.CinemaService;
import com.biscuit.b1.service.StoreService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	
	 @Inject 
	 private AdminService adminService;
	 @Inject
	 private StoreService storeService;

	@GetMapping("admin_cinema")
	public void movieSelect_admin_cinema() {
	}
	
	@GetMapping("admin_time")
	public Model movieSelect_admin_time(Model model) {
		
		List<MovieInfoVO> movieList = adminService.movieList();
		
		for(MovieInfoVO a : movieList) {
			System.out.println(a.getMovieInfo_title());
		}
		
		
		model.addAttribute("movieList", movieList);
		
		return model;
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
		
		int result = 0;
		
		int seq_result = 0;
		
			if (choiceVO.getTheater_name().equals("A")) {
				seq_result = adminService.sql_plus();
				result = adminService.timeInfoInsertA(choiceVO);
			} else if (choiceVO.getTheater_name().equals("B")) {
				seq_result = adminService.sql_plus();
				result = adminService.timeInfoInsertB(choiceVO);
			} else if(choiceVO.getTheater_name().equals("C")) {
				seq_result = adminService.sql_plus();
				result = adminService.timeInfoInsertC(choiceVO);
			}
		
		ModelAndView mv = new ModelAndView();
		
		String msg = "시간 입력실패";
		
		if(result > 0) {
			msg = "시간 입력성공";
		} 
		
		mv.addObject("msg", msg);
		mv.addObject("path", "./admin_movieTimeInsert");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	@PostMapping("adminCinemaInsert")
	public ModelAndView adminCinemaInsert(CinemaVO cinemaVO) {
		System.out.println(cinemaVO.getCinema_loc());
		System.out.println(cinemaVO.getCinema_name());
		System.out.println(cinemaVO.getCinema_add());
		System.out.println(cinemaVO.getCinema_tel());
		
		int result = adminService.cinemaInsert(cinemaVO);
		int result2 = 0;
		String msg = "영화관 추가 실패";
		
		if(result > 0) {
		  result2 =	adminService.theaterInsert(cinemaVO);
		}
		
		if(result2 > 0) {
			msg = "영화관 추가 성공";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", msg);
		mv.addObject("path", "./admin_cinemaInsert");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	

	//관리자 부트스트랩
	@RequestMapping("adminmain")
	public Model adminmain(Model model) {
		model.addAttribute("mmtotal", adminService.monthMovieTotal());
		model.addAttribute("mstotal", adminService.monthStoreTotal());
		model.addAttribute("tmovierate", adminService.todayMovieRate());
		model.addAttribute("theatertotal", adminService.theaterTotal());
		model.addAttribute("cinematotal", adminService.cinemaTotal());
		model.addAttribute("movietop", adminService.movieTop());
	
		return model;
	}
	
	@RequestMapping("admin_cinemaInsert")
	public void admin_cinemaInsert() {
	}
	
	@GetMapping("admin_cinemaList")
	public Model admin_cinemaList(Model model) {
		//시네마 리스트 받기
		List<CinemaVO> cinemalist =  adminService.cinemaList();
		//수정하면 값 폼으로 받아서 수정하기
		model.addAttribute("cinemalist", cinemalist);
		return model;
	}
	
	@GetMapping("admin_movieTimeList")
	public Model admin_movieTimeList(Model model) {
		//무비리스트 받기
		List<ChoiceVO> movieTimeList = adminService.movieTimeList();
		
		for(ChoiceVO a : movieTimeList) {
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0,10));
			a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
			a.setTimeInfo_end(a.getTimeInfo_end().substring(11, 16));
		}
		model.addAttribute("movieTimeList", movieTimeList);
		return model;
	}

	@RequestMapping("admin_movieTimeInsert")
	public Model admin_movieTimeInsert(Model model) {
		List<MovieInfoVO> movieList = adminService.movieList();
		for(MovieInfoVO a : movieList) {
			System.out.println(a.getMovieInfo_title());
		}
		model.addAttribute("movieList", movieList);
		return model;
	}
	
	// 관리자 : 영화관리
	@RequestMapping("admin_moviedataList")
	public void admin_moviedataList() {	
	}
	
	@RequestMapping("admin_moviedataInsert")
	public void admin_moviedataInsert() {	
	}
	
	//관리자 : 회원관리
	@RequestMapping("admin_memberList")
	public void admin_memberList() {	
	}
////////////////////////////////스토어/////////////////////////////////////////////	
	//관리자 : 상품 삭제
	@ResponseBody
	@PostMapping("admin_storeDelete")
	public int admin_storeDelete(@RequestParam(value="list[]") List<String> list, StoreVO storeVO, HttpServletRequest request) throws Exception {
		//MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		int result = 0;
		int store_num = 0;
		
		//if(memberVO != null) {
			//cartVO.setMember_id("a");
			
			for(String i : list) {
				store_num = Integer.parseInt(i);
				
				storeVO.setStore_num(store_num);
				
				result = storeService.storeDelete(storeVO, request);
			}
		//}
		return result;
	}
	
	// 상품 수정 폼
	@GetMapping("admin_storeUpdate")
	public void storeUpdate(StoreVO storeVO, Model model) throws Exception {
		storeVO = storeService.storeSelect(storeVO);
		
		model.addAttribute("update", storeVO);
	}

	@RequestMapping("admin_storeInsert")
	public void admin_storeInsert() throws Exception {
	}
	
	//관리자  : 스토어관리
	@RequestMapping("admin_storeList")
	public void admin_storeList(StoreVO storeVO, Model model) throws Exception {
		if(storeVO.getStore_package() == 0) {
			storeVO.setStore_package(1);
		}
		List<StoreVO> list = storeService.storeList(storeVO);
		
		model.addAttribute("storeList", list);
	}
////////////////////////////////스토어/////////////////////////////////////////////	
	//cinemaselect
	@RequestMapping("admin_cinemaSelect")
	public CinemaVO admin_cinemaSelect(CinemaVO cinemaVO) {
		cinemaVO = adminService.cinemalistSelect(cinemaVO);
		
		return cinemaVO;
	}
	
	@RequestMapping("admin_cinemaUpdate")
	public ModelAndView admin_cinemaUpdate(CinemaVO cinemaVO) {
		System.out.println("들어오니");
		System.out.println(cinemaVO.getCinema_num());
		int result = adminService.cinemalistUpdate(cinemaVO);
		
		System.out.println(result);
		
		String msg = "수정 실패";
		
		if (result > 0) {
			msg = "수정 성공";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", msg);
		mv.addObject("path", "./admin_cinemaList");
		mv.setViewName("common/common_result");
		
		return mv;
		
	}
	
	@RequestMapping("admin_cinemaDelete")
	public ModelAndView admin_cinemaDelete(CinemaVO cinemaVO) {
		int result = adminService.cinemalistDelete(cinemaVO);
		

		String msg = "삭제 실패";
		
		if (result > 0) {
			msg = "삭제 성공";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", msg);
		mv.addObject("path", "./admin_cinemaList");
		mv.setViewName("common/common_result");
		
		return mv;
		
	}
	

	
}