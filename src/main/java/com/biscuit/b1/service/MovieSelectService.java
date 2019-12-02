package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MovieSelectDAO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;

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
	
	
	//날짜
	public List<TimeInfoVO> dateSelect(TheaterVO theaterVO) {
		return movieSelectDAO.dateSelect(theaterVO);
	}
	
	
	public List<TimeInfoVO> movieDateSelect(TheaterVO theaterVO) {
		return movieSelectDAO.movieDateSelect(theaterVO);
	}
	
	
	public List<TimeInfoVO> movieTimeSelect(TheaterVO theaterVO) {
		return movieSelectDAO.movieTimeSelect(theaterVO);
	}
}
