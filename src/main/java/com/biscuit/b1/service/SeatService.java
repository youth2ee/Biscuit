package com.biscuit.b1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.SeatDAO;
import com.biscuit.b1.model.CinemaVO;

@Service
public class SeatService {
	@Inject
	private SeatDAO seatDAO;

	public CinemaVO selectCinema(CinemaVO cinemaVO) throws Exception {
		return seatDAO.selectCinema(cinemaVO);
	}

}
