package com.biscuit.b1.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.SeatVO;
import com.biscuit.b1.service.SeatService;

@Controller
@RequestMapping("/seat/**")
public class SeatController {
	@Inject
	private SeatService seatService;
	@RequestMapping(value = "seatSelect")
	public ModelAndView seatSelect(ChoiceVO choiceVO,HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		/*
		 * System.out.println("시네마 지역 : " + choiceVO.getCinema_loc());
		 * System.out.println("시네마 이름 : " + choiceVO.getCinema_name());
		 * System.out.println("시네마 번호 : " + choiceVO.getCinema_num());
		 * System.out.println("상영 시작 : " + choiceVO.getTimeInfo_start());
		 */
		List<SeatVO> seatVOs = seatService.bookCheck(choiceVO);
		mv.addObject("seats", seatVOs);
		mv.addObject("movieInfo_name", choiceVO.getMovieInfo_name());
		mv.addObject("cinema_num", choiceVO.getCinema_num());
		mv.addObject("cinema_loc", choiceVO.getCinema_loc());
		mv.addObject("cinema_name", choiceVO.getCinema_name());
		mv.addObject("timeInfo_start", choiceVO.getTimeInfo_start());
		mv.addObject("theater_num", choiceVO.getTheater_num());
		mv.addObject("movieInfo_num", choiceVO.getMovieInfo_num());
		mv.setViewName("/seat/seatSelect");
		return mv;
	}

	@PostMapping(value = "seatSelect")
	public ModelAndView seatSelect(HttpServletRequest request, SeatVO seatVO, ChoiceVO choiceVO,
			Movie_TicketingVO movie_TicketingVO) throws Exception {
		int result1 = 0;
		int result2 = 0;
		String[] seat_names = seatVO.getSeat_name().split(",");
		String timeInfo_start = choiceVO.getTimeInfo_start();
		ModelAndView mv = new ModelAndView();
		for (int i = 0; i < seat_names.length; i++) { // 표 장수에 따라서 db에 넣는 횟수(표 개수)
			seatVO.setCinema_num(choiceVO.getCinema_num());
			seatVO.setMovieInfo_name(choiceVO.getMovieInfo_name());
			seatVO.setSeat_name(seat_names[i]);
			seatVO.setTimeInfo_start(timeInfo_start);
			seatVO.setTheater_num(choiceVO.getTheater_num());
			seatVO.setMovieInfo_num(choiceVO.getMovieInfo_num());
			result1 = seatService.seatBooking(seatVO); // 좌석 테이블에 입력

			SimpleDateFormat today = new SimpleDateFormat("MMdd");
			Date now = new Date();
			String str1 = String.format("%04d%n", seatVO.getCinema_num()).replace("\r\n", "");
			String str2 = String.format("%04d%n", seatService.searchMovieNum(seatVO)).replace("\r\n", "");
			String[] str3s = seatVO.getTimeInfo_start().split(":");// 상영 시간
			String str3 = str3s[0] + str3s[1];
			String str4 = today.format(now);
			String str5 = String.format("%-4s", seat_names[i]).replace(" ", "0").replace("\r\n", "");
			
			String bookCode = str1 + "-" + str2 + "-" + str3 + "-" + str4+"-"+str5;
			System.out.println("예매번호 : " + bookCode);

			movie_TicketingVO.setMovie_t_num(bookCode);
			movie_TicketingVO.setId("admin"); // 임시
			movie_TicketingVO.setMovieInfo_num(seatService.searchMovieNum(seatVO));
			movie_TicketingVO.setCinema_num(choiceVO.getCinema_num());
			movie_TicketingVO.setTheater_num(choiceVO.getTheater_num());
			movie_TicketingVO.setSeat_name(seat_names[i]);
			result2 = seatService.insertTicket(movie_TicketingVO); // 예매정보 테이블에 입력

		}
		String msg = "예매 실패";
		if (result1 + result2 > 1) {
			msg = "예매 성공";
			return new ModelAndView(new RedirectView("../pay/kakaoPay?price="+request.getParameter("price")+"&count="+request.getParameter("count")));
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");

		return mv;
	}
}
