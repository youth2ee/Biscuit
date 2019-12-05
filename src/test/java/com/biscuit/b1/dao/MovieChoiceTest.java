package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;

public class MovieChoiceTest extends TestAbstractCase {
	
	@Inject
	private MovieSelectDAO movieSelectDAO;

	//@Test
	public void test() {
		ChoiceVO choiceVO = new ChoiceVO();
		choiceVO.setMovieInfo_num(1);
		List<ChoiceVO> ar =  movieSelectDAO.movieChoice(choiceVO);
		
		for(ChoiceVO c : ar) {
			System.out.println(c.getCinema_num());
			System.out.println(c.getTheater_num());
			System.out.println(c.getTimeInfo_start());
		}
			
		assertNotEquals(ar.size(), 0);
	}
	
	//@Test
	public void test2() {
		TheaterVO theaterVO = new TheaterVO();
		theaterVO.setMovieInfo_num(1);
		theaterVO.setCinema_num(1);
		
		//List<TimeInfoVO> ar = movieSelectDAO.movieTimeSelect(theaterVO);
		
		//assertNotEquals(ar.size(), 0);
	}
	
	//@Test
	public void test3() {
		TheaterVO theaterVO = new TheaterVO();
		theaterVO.setCinema_num(1);
		List<TimeInfoVO> ar = movieSelectDAO.dateSelect(theaterVO);
		
		assertNotEquals(ar.size(), 0);
	}
	
	//@Test
	public void movieChoice() {
		ChoiceVO choiceVO = new ChoiceVO();
		choiceVO.setCinema_loc("서울");
		choiceVO.setMovieInfo_num(1);
		
		List<ChoiceVO> ar = movieSelectDAO.movieChoice(choiceVO);
		
		assertNotEquals(ar.size(), 0);
	}
	
	@Test
	public void movieCinemaSelect() {
		ChoiceVO choiceVO =  new ChoiceVO();
		choiceVO.setCinema_loc("서울");
		
		List<CinemaVO> ar =  movieSelectDAO.movieCinemaSelect(choiceVO);
		
		assertNotEquals(ar.size(), 0);
	}

}
