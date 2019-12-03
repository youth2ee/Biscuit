package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TimeInfoVO;

public class MovieChoiceTest extends TestAbstractCase {
	
	@Inject
	private MovieSelectDAO movieSelectDAO;

	@Test
	public void test() {
		MovieInfoVO movieInfoVO = new MovieInfoVO();
		movieInfoVO.setMovieInfo_num(1);
		List<ChoiceVO> ar =  movieSelectDAO.movieChoice(movieInfoVO);
		
		for(ChoiceVO c : ar) {
			System.out.println(c.getCinema_num());
			System.out.println(c.getTheater_num());
			System.out.println(c.getTimeInfo_start());
		}
		
		
		assertNotEquals(ar.size(), 0);
	}

}
