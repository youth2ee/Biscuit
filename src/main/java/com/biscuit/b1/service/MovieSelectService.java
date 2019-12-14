package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MovieSelectDAO;
import com.biscuit.b1.model.ChoiceVO;
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
	
	public List<CinemaVO> movieCinemaSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieCinemaSelect(choiceVO);
	}
	
	//영화에 따른 관선택
	public List<ChoiceVO> movieChoice(ChoiceVO choiceVO) {
		return movieSelectDAO.movieChoice(choiceVO);
	}
	
	//theater num
	public ChoiceVO theaterSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.theaterSelect(choiceVO);
	}
	
	//날짜
	public List<TimeInfoVO> movieDateSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieDateSelect(choiceVO);
	}
	
	public List<TimeInfoVO> movieTimeSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieTimeSelect(choiceVO);
	}

	//seat
	public List<ChoiceVO> seatCount(ChoiceVO choiceVO) {
		return movieSelectDAO.seatCount(choiceVO);
	}
	
	//movieList 페이지
	public List<MovieInfoVO> movieList() {
		return movieSelectDAO.movieList();
	}
	
}