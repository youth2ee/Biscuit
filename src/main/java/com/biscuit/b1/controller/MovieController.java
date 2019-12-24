package com.biscuit.b1.controller;

import java.sql.Array;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.MovieSelectService;
import com.biscuit.b1.service.MovieService;

import oracle.jdbc.proxy.annotation.Post;
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

	@Inject
	private Environment env;
	private String key;

	@GetMapping("movieManagement")
	public ModelAndView movieManagement() throws Exception {
		String lastRelease = movieService.lastRelease();
		List<MovieDataVO> movieDataVOs = movieService.movieListView();
		for (int i = 0; i < movieDataVOs.size(); i++)
			movieDataVOs.get(i).setReleaseDate(movieDataVOs.get(i).getReleaseDate().substring(0, 10));
		ModelAndView mv = new ModelAndView();
		lastRelease = lastRelease.substring(0, 10);
		mv.addObject("movieDataVOs", movieDataVOs);
		mv.addObject("lastRelease", lastRelease);
		return mv;
	}

	@PostMapping("movieManagement")
	public ModelAndView movieManagement2() throws Exception {
		int result = movieService.movieManagement();
		ModelAndView mv = new ModelAndView();
		String msg = "영화 추가에 실패했습니다.";
		if (result > 0) {
			msg = result + "개의 영화 추가 완료";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "./movieManagement");
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("movieSelect")
	public ModelAndView movieSelect(ChoiceVO choiceVO) throws Exception {
		List<MovieInfoVO> movieTitle = movieSelectService.movieTitleSelect();
		List<CinemaVO> movieLoc = movieSelectService.movieLocSelect();

		ModelAndView mv = new ModelAndView();
		mv.addObject("movieTitle", movieTitle);
		mv.addObject("movieLoc", movieLoc);
		
		mv.addObject("movieInfo_name", choiceVO.getMovieInfo_name());
		
		mv.setViewName("movie/movieSelect");

		return mv;
	}

	@GetMapping("locSelect")
	// @ResponseBody
	public ModelAndView locSelect(ChoiceVO choiceVO) throws Exception {
		// 영화선택후 지역선택값 받아서 모든 영화관
		List<CinemaVO> ar = movieSelectService.movieCinemaSelect(choiceVO);

		// 선택한 영화에 따른 영화관
		List<ChoiceVO> cr = movieSelectService.movieChoice(choiceVO);
		// List<Integer> check = new ArrayList<Integer>();
		Integer[] check = new Integer[ar.size()];
		for (int i = 0; i < check.length; i++) {
			check[i] = 0;
		}
		for (int i = 0; i < cr.size(); i++) {
			for (int j = 0; j < ar.size(); j++) {
				if (cr.get(i).getCinema_name().equals(ar.get(j).getCinema_name())) {
					check[j] = 1;
				}
			}
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/cinema_result");
		mv.addObject("result", ar);
		mv.addObject("selectResult", cr);
		mv.addObject("check", check);
		return mv;
	}

	@GetMapping("dateSelect")
	public ModelAndView dateSelect(ChoiceVO choiceVO) throws Exception {
		// 날짜선택
		List<TimeInfoVO> movieDateSelect = movieSelectService.movieDateSelect(choiceVO);

		for (TimeInfoVO a : movieDateSelect) {
			System.out.println("durl");
			System.out.println(a.getTimeInfo_date());
			
			//요일 구하기
			 SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd") ;
			 Date nDate = dateFormat.parse(a.getTimeInfo_date()) ;
		    
			 Calendar cal = Calendar.getInstance() ;
			 cal.setTime(nDate);
			     
			 int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
			 System.out.println(dayNum);
			     
			 String week = "";    
			 
			    switch(dayNum){
			        case 1:
			            week = "일";
			            break;
			        case 2:
			        	week = "월";
			            break;
			        case 3:
			        	week = "화";
			            break;
			        case 4:
			        	week = "수";
			            break;
			        case 5:
			        	week = "목";
			            break;
			        case 6:
			        	week = "금";
			            break;
			        case 7:
			        	week = "토";
			            break;
  
			    }
	
			a.setWeek(week);

			a.setYear("20" + a.getTimeInfo_date().substring(0, 2));
			a.setMonth(a.getTimeInfo_date().substring(3, 5));
			a.setDay(a.getTimeInfo_date().substring(6));
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/date_result");
		mv.addObject("result", movieDateSelect);

		return mv;
	}
	
	
	
	
	

	@GetMapping("timeSelect")
	public ModelAndView timeSelect(ChoiceVO choiceVO) throws Exception {
		/*
		 * System.out.println(choiceVO.getMovieInfo_num());
		 * System.out.println(choiceVO.getCinema_num());
		 * System.out.println(choiceVO.getTimeInfo_date());
		 * System.out.println(choiceVO.getCinema_num());
		 */

		List<ChoiceVO> timeSelect = movieSelectService.movieTimeSelect(choiceVO);

		for (ChoiceVO a : timeSelect) {
			/* a.setTimeInfo_date(a.getTimeInfo_date().substring(2, 10)); */
			a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
			a.setTimeInfo_end(a.getTimeInfo_end().substring(11, 16));

			/*
			 * System.out.println(a.getTimeInfo_date());
			 * System.out.println(a.getTimeInfo_start());
			 * System.out.println(a.getTimeInfo_end());
			 * System.out.println(a.getTheater_name());
			 * System.out.println(a.getTheater_num());
			 */
		}

		// 여기서 좌석수를 보내조야 해
		List<ChoiceVO> seatList = movieSelectService.seatCount(choiceVO);

		for (ChoiceVO b : seatList) {
			b.setTimeInfo_start(b.getTimeInfo_start().substring(11, 16));
			/* System.out.println(b.getTimeInfo_start()); */
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/time_result");
		mv.addObject("result", timeSelect);
		mv.addObject("seatList", seatList);

		return mv;
	}

	// movieList
	@GetMapping("movieList")
	public void movieList(Locale locale, Model model, HttpSession session) {

		// api
		/*
		 * String key = env.getProperty("movie.key"); Date date = new Date(); DateFormat
		 * dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG,
		 * locale); String formattedDate = dateFormat.format(date);
		 */

		// 영화 db
		List<MovieInfoVO> ar = movieSelectService.movieList();

		for (MovieInfoVO a : ar) {
			a.setMovieInfo_date(a.getMovieInfo_date().substring(0, 10));
		}

		// 로그인정보 : 세션에서 member 찾기
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		List<MovieGradeVO> br = new ArrayList<MovieGradeVO>();

		// grade
		if (memberVO != null) {
			br = movieService.movieGradeTotal(memberVO);
			String id = memberVO.getId();
			List<MovieGradeVO> hearts = movieService.searchForHeart(id);
			List<MovieGradeVO> myGrade = movieService.myGrade(id);
			System.out.println(myGrade);
			model.addAttribute("hearts", hearts);
			model.addAttribute("myGrade", myGrade);
		}
		model.addAttribute("grade", br);
		model.addAttribute("movieList", ar);
		// model.addAttribute("serverTime", formattedDate);
		/* model.addAttribute("key", key); */
		model.addAttribute("member", memberVO);
	}

	@GetMapping("movieapi")
	@ResponseBody
	public String movieapi(String rank1) {
		/* System.out.println(rank1); */

		return rank1;
	}

	// movieList : 하트
	@PostMapping("movieListHeart")
	@ResponseBody
	public int movieListHeart(MovieGradeVO movieGradeVO) {
		System.out.println("moviegrade !!");
		System.out.println(movieGradeVO.getId());
		System.out.println(movieGradeVO.getMovieInfo_num());
		System.out.println(movieGradeVO.getMovieGrade_heart());

		int result = 0;

		MovieGradeVO movieGradeVO2 = movieService.movieGradeSelect(movieGradeVO);

		System.out.println(movieGradeVO);

		if (movieGradeVO2 == null) {
			// 널이면 insert
			result = movieService.movieGradeInsert(movieGradeVO);
			result = movieService.movieHeartUpdate(movieGradeVO);
		} else {
			// 낫널이면 update
			result = movieService.movieHeartUpdate(movieGradeVO);
		}
		
		return result;
	}
	
	//movieList : 별점
	@PostMapping("movieListStar")
	@ResponseBody
	public int movieListStar(MovieGradeVO movieGradeVO) {
		System.out.println("moviegrade !!");
		System.out.println(movieGradeVO.getId());
		System.out.println(movieGradeVO.getMovieInfo_num());
		System.out.println(movieGradeVO.getMovieGrade_heart());
		
		int result = 0;
		
		MovieGradeVO movieGradeVO2 = movieService.movieGradeSelect(movieGradeVO);
		
		System.out.println(movieGradeVO);
		
		if(movieGradeVO2 == null) {
			//널이면 insert
			result = movieService.movieGradeInsert(movieGradeVO);
			if(result > 0) {				
				result = movieService.movieStarUpdate(movieGradeVO);
				if (result > 0 ) {
					result = movieService.movieInfoStarUpdate(movieGradeVO);
				}
			}
			
			
		}else {
			//낫널이면 update
			result = movieService.movieStarUpdate(movieGradeVO);
			if (result > 0) {
				result = movieService.movieInfoStarUpdate(movieGradeVO);
			}
		}
		
		return result;
	}
	
}