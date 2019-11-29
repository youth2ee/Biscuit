package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.TimeInfoVO;

public class MovieSelectDAOTest extends TestAbstractCase {
	
	@Inject
	private MovieSelectDAO movieSelectDAO;


	@Test
	public void timeInfoInsertA() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		timeInfoVO.setTheater_num(31);
		timeInfoVO.setMovieInfo_num(4);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
		assertEquals(result, 5);
	}

	@Test
	public void timeInfoInsertB() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		timeInfoVO.setTheater_num(32);
		timeInfoVO.setMovieInfo_num(1);
		int result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
		assertEquals(result, 5);
	}

	@Test
	public void timeInfoInsertC() {
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		timeInfoVO.setTheater_num(33);
		timeInfoVO.setMovieInfo_num(19);
		int result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
		assertEquals(result, 5);
	}
	

}
