package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.SeatVO;
import com.biscuit.b1.service.SeatService;

@Controller
@RequestMapping("/seat/**")
public class SeatController {
	@Inject
	private SeatService seatService;
	
	
	@GetMapping(value = "seatResult")
	public void seatResult() throws Exception{
		
	}
	
	@GetMapping(value = "seatSelect")
	public ModelAndView seatSelect(CinemaVO cinemaVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		cinemaVO = seatService.selectCinema(cinemaVO);
		String cinema_loc = cinemaVO.getCinema_loc();
		String cinema_name = cinemaVO.getCinema_name();
		mv.addObject("cinema_loc", cinema_loc);
		mv.addObject("cinema_name", cinema_name);
		List<SeatVO> bookedSeat = seatService.bookCheck();
		mv.addObject("bookedSeat",bookedSeat);
		return mv;
		
	}
	@PostMapping(value="seatSelect")
	public void seatSelect(HttpServletRequest request,SeatVO seatVO) throws Exception{
		String seat_name = request.getParameter("seat_name");
		String[] seat_names = seat_name.split(",");
		for(int i=0; i < seat_names.length; i++) { // 표 장수에 따라서 db에 넣는 횟수
			seatVO.setCinema_num(1); // 임시로 넣음
			seatVO.setTheater_num(1); // 임시로 넣음
			seatVO.setSeat_name(seat_names[i]);
			seatService.seatBooking(seatVO);
		}
	}
}
