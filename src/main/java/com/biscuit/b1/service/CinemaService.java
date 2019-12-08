package com.biscuit.b1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.CinemaDAO;
import com.biscuit.b1.model.CinemaVO;

@Service
public class CinemaService {

	@Inject
	private CinemaDAO cinemaDAO;
	
	public CinemaVO cinema_loc(CinemaVO cinemaVO) {
		return cinemaDAO.cinema_loc(cinemaVO);
	}
}
