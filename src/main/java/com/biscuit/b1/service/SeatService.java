package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.SeatDAO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.SeatVO;

@Service
public class SeatService {
	@Inject
	private SeatDAO seatDAO;

	public CinemaVO selectCinema(CinemaVO cinemaVO) throws Exception {
		return seatDAO.selectCinema(cinemaVO);
	}
	public int seatBooking(SeatVO seatVO) throws Exception{
		return seatDAO.seatBooking(seatVO);
	}
	public List<SeatVO> bookCheck() throws Exception{
		return seatDAO.bookCheck();
	}
}
