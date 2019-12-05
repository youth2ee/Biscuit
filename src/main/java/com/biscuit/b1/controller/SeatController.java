package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.SeatVO;
import com.biscuit.b1.service.SeatService;

@Controller
@RequestMapping("/seat/**")
public class SeatController {
	@Inject
	private SeatService seatService;

	@RequestMapping(value = "seatSelect")
	public ModelAndView seatSelect(ChoiceVO choiceVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("시네마 지역 : " + choiceVO.getCinema_loc());
		System.out.println("시네마 이름 : " + choiceVO.getCinema_name());
		System.out.println("상영 시작 : "+choiceVO.getTimeInfo_start());
		List<SeatVO> seatVOs = seatService.bookCheck(choiceVO);
		mv.addObject("seats", seatVOs);

		mv.addObject("cinema_loc", choiceVO.getCinema_loc());
		mv.addObject("cinema_name", choiceVO.getCinema_name());
		mv.setViewName("/seat/seatSelect");
		return mv;
	}

	@PostMapping(value = "seatSelect")
	public void seatSelect(HttpServletRequest request, SeatVO seatVO, ChoiceVO choiceVO) throws Exception {
		String seat_name = request.getParameter("seat_name");
		String[] seat_names = seat_name.split(",");
		for (int i = 0; i < seat_names.length; i++) { // 표 장수에 따라서 db에 넣는 횟수
			seatVO.setCinema_num(choiceVO.getCinema_num()); // 임시로 넣음
			seatVO.setTheater_num(choiceVO.getTheater_num()); // 임시로 넣음
			seatVO.setSeat_name(seat_names[i]);
			seatService.seatBooking(seatVO);
		}
	}
}
