package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.SeatDAO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.SeatVO;

@Service
public class SeatService {
	@Inject
	private SeatDAO seatDAO;

	public CinemaVO selectCinema(ChoiceVO choiceVO) throws Exception {
		return seatDAO.selectCinema(choiceVO);
	}
	public int seatBooking(SeatVO seatVO) throws Exception{
		return seatDAO.seatBooking(seatVO);
	}
	public List<SeatVO> bookCheck(ChoiceVO choiceVO) throws Exception{
		return seatDAO.bookCheck(choiceVO);
	}
}
