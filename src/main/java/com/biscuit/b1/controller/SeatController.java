package com.biscuit.b1.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.SeatVO;
import com.biscuit.b1.service.SeatService;

@Controller
@RequestMapping("/seat/")
public class SeatController {
	@Inject
	private SeatService seatService;

	@RequestMapping(value = "seatSelect")
	public ModelAndView seatSelect(ChoiceVO choiceVO, HttpServletRequest request, HttpSession session)
			throws Exception {
		choiceVO = (ChoiceVO) session.getAttribute("ChoiceVO");

		ModelAndView mv = new ModelAndView();

		List<SeatVO> seatVOs = seatService.bookCheck(choiceVO); // 예약된 좌석들을 가져옴
		MovieDataVO movieDataVO = seatService.getPoster(choiceVO); // 포스터 url을 가져와서 넣어줌
		String grade = seatService.getGrade(choiceVO);

		//mv.addObject("poster", movieDataVO.getPoster());
		mv.addObject("seats", seatVOs);
		mv.addObject("movieInfo_name", choiceVO.getMovieInfo_name());
		System.out.println(choiceVO.getMovieInfo_name());
		mv.addObject("cinema_num", choiceVO.getCinema_num());
		mv.addObject("cinema_loc", choiceVO.getCinema_loc());
		mv.addObject("cinema_name", choiceVO.getCinema_name());
		mv.addObject("timeInfo_start", choiceVO.getTimeInfo_start());
		mv.addObject("timeInfo_date", choiceVO.getTimeInfo_date());
		mv.addObject("theater_num", choiceVO.getTheater_num());
		mv.addObject("movieInfo_num", choiceVO.getMovieInfo_num());
		mv.setViewName("/seat/seatSelect");
		return mv;
	}

	@PostMapping(value = "seatSelect")
	public String seatSelect(HttpServletRequest request, HttpSession session, SeatVO seatVO, ChoiceVO choiceVO,
			Movie_TicketingVO movie_TicketingVO, String kidCount, String adultCount,
			RedirectAttributes redirectAttributes) throws Exception {
		int result1 = 0;
		int result2 = 0;
		int adultCheck = 0;
		String allBookCode = null;
		ArrayList<String> ar = new ArrayList<String>();
		String[] seat_names = seatVO.getSeat_name().split(",");
		String timeInfo_start = choiceVO.getTimeInfo_start();
		ModelAndView mv = new ModelAndView();
		for (int i = 0; i < seat_names.length; i++) { // 표 장수에 따라서 DB에 넣는 횟수(표 개수)
			seatVO.setCinema_num(choiceVO.getCinema_num());
			seatVO.setMovieInfo_name(choiceVO.getMovieInfo_name());
			seatVO.setSeat_name(seat_names[i]);
			seatVO.setTimeInfo_start(timeInfo_start);
			seatVO.setTheater_num(choiceVO.getTheater_num());
			seatVO.setMovieInfo_num(choiceVO.getMovieInfo_num());
			seatVO.setTimeInfo_date(choiceVO.getTimeInfo_date());
			result1 = seatService.seatBooking(seatVO); // 좌석 테이블에 입력

			// 예매 번호 생성하기

			/*
			 * SimpleDateFormat today = new SimpleDateFormat("MMdd"); Date now = new Date();
			 */

			String str1_1 = String.format("%02d%n", seatVO.getCinema_num()).replace("\r\n", ""); // 극장지점
			String str1_2 = String.format("%02d%n", seatVO.getTheater_num()).replace("\r\n", ""); // 관번호
			String str1 = str1_1 + str1_2; // 극장지점 + 관번호
			String str2 = String.format("%04d%n", seatVO.getMovieInfo_num()).replace("\r\n", ""); // 영화번호
			System.out.println(choiceVO.getTimeInfo_start());
			System.out.println(choiceVO.getTimeInfo_date());
			String str3 = choiceVO.getTimeInfo_start().substring(0, 2) + seatVO.getTimeInfo_start().substring(3,5);
			System.out.println(str3);
			String str4 = choiceVO.getTimeInfo_date().substring(3, 5) + choiceVO.getTimeInfo_date().substring(6);// 상영날짜
			String str5 = null;
			if (seat_names[i].contains("10")) // F10 이어도 F100, F1이어도 F100이기 때문에 중복값 방지
				str5 = String.format("%-4s", seat_names[i]).replace(" ", "1").replace("\r\n", "");
			else
				str5 = String.format("%-4s", seat_names[i]).replace(" ", "0").replace("\r\n", "");

			String bookCode = str1 + "-" + str2 + "-" + str3 + "-" + str4 + "-" + str5;
			ar.add(bookCode);
			System.out.println("예매번호 : " + bookCode);
			MemberVO memberVO = (MemberVO) session.getAttribute("member");
			movie_TicketingVO.setMovie_t_num(bookCode);
			movie_TicketingVO.setId(memberVO.getId());
			movie_TicketingVO.setMovieInfo_num(seatVO.getMovieInfo_num());
			movie_TicketingVO.setCinema_num(choiceVO.getCinema_num());
			movie_TicketingVO.setTheater_num(choiceVO.getTheater_num());
			movie_TicketingVO.setSeat_name(seat_names[i]);
			movie_TicketingVO.setTimeInfo_start(choiceVO.getTimeInfo_start());
			movie_TicketingVO.setTimeInfo_date(choiceVO.getTimeInfo_date());
			if (Integer.parseInt(adultCount) > adultCheck) {
				movie_TicketingVO.setPrice(10000); // 어른이라면 가격 테이블에 10000
				adultCheck++;
			} else {
				movie_TicketingVO.setPrice(8000); // 청소년이면 8000
			}
			if (result1 > 0) // Seat테이블에 추가가 되면
				result2 = seatService.insertTicket(movie_TicketingVO); // 예매정보 테이블에 입력

		}
		for (int i = 0; i < ar.size(); i++) {
			if (i == 0)
				allBookCode = ar.get(i);
			else
				allBookCode = allBookCode + "," + ar.get(i);
		}
		session.setAttribute("allBookCode", allBookCode); // 파라미터로 보내면 여러군데 거쳐가야하므로 그냥 세션에 넣었음
		session.setAttribute("adultCount", adultCount);
		System.out.println("성인 수 : " + adultCount);
		session.setAttribute("kidCount", kidCount);
		System.out.println("학생 수 : " + kidCount);
		String msg = "예매 실패";
		if (result1 + result2 > 1) {
			msg = "예매 성공";
			seatService.ratingUpdate(choiceVO);
			redirectAttributes.addFlashAttribute("price", request.getParameter("price"));
			redirectAttributes.addFlashAttribute("count", request.getParameter("count"));
			return "redirect:/pay/kakaoPay";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");

		return "common/common_result";
	}

}