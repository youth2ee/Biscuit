package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.AdminDAO;
import com.biscuit.b1.model.AdminVO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.sun.org.apache.regexp.internal.recompile;

@Service
public class AdminService {
	
	@Inject
	private AdminDAO adminDAO;
	
	public List<CinemaVO> adminLocSelect(CinemaVO cinemaVO) {
		return adminDAO.adminLocSelect(cinemaVO);
	}
	
	public MovieInfoVO movie_num(MovieInfoVO movieInfoVO) {
		return adminDAO.movie_num(movieInfoVO);
	}
	
	public TheaterVO theater_num(TheaterVO theaterVO) {
		return adminDAO.theater_num(theaterVO);
	}
	
	public int timeInfoInsertA(ChoiceVO choiceVO) {
		return adminDAO.timeInfoInsertA(choiceVO);
	}
	
	public int timeInfoInsertB(ChoiceVO choiceVO) {
		return adminDAO.timeInfoInsertB(choiceVO);
	}
	
	public int timeInfoInsertC(ChoiceVO choiceVO) {
		return adminDAO.timeInfoInsertC(choiceVO);
	}

	
	public int sql_plus() {
		return adminDAO.seq_plus();
	}
	
	public List<MovieInfoVO> movieList() {
		return adminDAO.movieList();
	}
	
	public int cinemaInsert(CinemaVO cinemaVO) {
		return adminDAO.cinemaInsert(cinemaVO);
	}
	
	public int theaterInsert(CinemaVO cinemaVO) {
		return adminDAO.theaterInsert(cinemaVO);
	}
	
	//list
	public List<CinemaVO> cinemaList() {
		return adminDAO.cinemaList();
	}

	public List<ChoiceVO> movieTimeList() {
		return adminDAO.movieTimeList();
	}
	
	//판매량
	public AdminVO monthMovieTotal() {
		return adminDAO.monthMovieTotal();
	}
	
	public AdminVO monthStoreTotal() {
		return adminDAO.monthStoreTotal();
	}
	
	public AdminVO todayMovieRate() {
		return adminDAO.todayMovieRate();
	}

	public AdminVO theaterTotal() {
		return adminDAO.theaterTotal();
	}
	
	public List<AdminVO> cinemaTotal() {
		return adminDAO.cinemaTotal();
	}
	
	public List<AdminVO> movieTop() {
		return adminDAO.movieTop();
	}

	//listSelect
	public CinemaVO cinemalistSelect(CinemaVO cinemaVO) {
		return adminDAO.cinemalistSelect(cinemaVO);
	}
	
	public int cinemalistUpdate (CinemaVO cinemaVO) {
		return adminDAO.cinemalistUpdate(cinemaVO);
	}
	
	public int cinemalistDelete(CinemaVO cinemaVO) {
		return adminDAO.cinemalistDelete(cinemaVO);
	}

	public int theaterDelete(CinemaVO cinemaVO) {
		return adminDAO.theaterDelete(cinemaVO);
	}
	
	//
	public ChoiceVO movietimeSelect(ChoiceVO choiceVO) {
		return adminDAO.movietimeSelect(choiceVO);
	}
	
	public int movietimeUpdate(ChoiceVO choiceVO) {
		return adminDAO.movietimeUpdate(choiceVO);
	}
	
	public int movietimeDelete(ChoiceVO choiceVO) {
		return adminDAO.movietimeDelete(choiceVO);
	}
}
