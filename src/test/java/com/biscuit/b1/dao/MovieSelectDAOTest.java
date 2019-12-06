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
	
	private int num = 172;

	@Test
	public void timeInfoInsertA() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		timeInfoVO.setTheater_num(num);
		timeInfoVO.setMovieInfo_num(3);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+1);
			timeInfoVO.setMovieInfo_num(7);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+2);
				timeInfoVO.setMovieInfo_num(22);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsertB() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		
		timeInfoVO.setTheater_num(num+3);
		timeInfoVO.setMovieInfo_num(4);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+4);
			timeInfoVO.setMovieInfo_num(7);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+5);
				timeInfoVO.setMovieInfo_num(23);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsertC() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		timeInfoVO.setTheater_num(num+6);
		timeInfoVO.setMovieInfo_num(2);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+7);
			timeInfoVO.setMovieInfo_num(1);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+8);
				timeInfoVO.setMovieInfo_num(15);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsertD() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		
		timeInfoVO.setTheater_num(num+9);
		timeInfoVO.setMovieInfo_num(2);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+10);
			timeInfoVO.setMovieInfo_num(1);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+11);
				timeInfoVO.setMovieInfo_num(16);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertE() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		timeInfoVO.setTheater_num(num+12);
		timeInfoVO.setMovieInfo_num(1);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+13);
			timeInfoVO.setMovieInfo_num(4);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+14);
				timeInfoVO.setMovieInfo_num(17);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertF() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		
		timeInfoVO.setTheater_num(num+15);
		timeInfoVO.setMovieInfo_num(1);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+16);
			timeInfoVO.setMovieInfo_num(5);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+17);
				timeInfoVO.setMovieInfo_num(18);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}


	//@Test
	public void timeInfoInsertG() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		timeInfoVO.setTheater_num(num+18);
		timeInfoVO.setMovieInfo_num(2);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+19);
			timeInfoVO.setMovieInfo_num(5);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+20);
				timeInfoVO.setMovieInfo_num(19);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertH() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		
		timeInfoVO.setTheater_num(num+21);
		timeInfoVO.setMovieInfo_num(2);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+22);
			timeInfoVO.setMovieInfo_num(6);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+23);
				timeInfoVO.setMovieInfo_num(20);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertI() {
		movieSelectDAO.seq_plus();
		TimeInfoVO timeInfoVO = new TimeInfoVO();

		
		timeInfoVO.setTheater_num(num+24);
		timeInfoVO.setMovieInfo_num(3);
		int result =  movieSelectDAO.timeInfoInsertA(timeInfoVO);
	
		if(result == 5) {
			movieSelectDAO.seq_plus();
			timeInfoVO.setTheater_num(num+25);
			timeInfoVO.setMovieInfo_num(6);
			result =  movieSelectDAO.timeInfoInsertB(timeInfoVO);
			
			if(result == 5) {
				movieSelectDAO.seq_plus();
				timeInfoVO.setTheater_num(num+26);
				timeInfoVO.setMovieInfo_num(21);
				result =  movieSelectDAO.timeInfoInsertC(timeInfoVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
}
