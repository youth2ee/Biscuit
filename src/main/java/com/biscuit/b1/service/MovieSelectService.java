package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MovieSelectDAO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;

@Service
public class MovieSelectService {

	@Inject
	private MovieSelectDAO movieSelectDAO;
	

	
	public List<MovieInfoVO> movieTitleSelect() {
		return movieSelectDAO.movieTitleSelect();
	}
	
	public List<CinemaVO> movieLocSelect() {
		return movieSelectDAO.movieLocSelect();
	}
	
	public List<CinemaVO> movieCinemaSelect(CinemaVO cinemaVO) {
		return movieSelectDAO.movieCinemaSelect(cinemaVO);
	}
	
}
