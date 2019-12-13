package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;

public class TimeInsertDAOTest extends TestAbstractCase {
	
	@Inject
	private AdminDAO adminDAO;
	
	private int num = 172;

	@Test
	public void timeInfoInsertA() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num);
		choiceVO.setMovieInfo_num(3);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+1);
			choiceVO.setMovieInfo_num(7);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+2);
				choiceVO.setMovieInfo_num(22);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsertB() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+3);
		choiceVO.setMovieInfo_num(4);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+4);
			choiceVO.setMovieInfo_num(7);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+5);
				choiceVO.setMovieInfo_num(23);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsertC() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+6);
		choiceVO.setMovieInfo_num(2);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+7);
			choiceVO.setMovieInfo_num(1);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+8);
				choiceVO.setMovieInfo_num(15);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsertD() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();
		
		choiceVO.setTheater_num(num+9);
		choiceVO.setMovieInfo_num(2);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+10);
			choiceVO.setMovieInfo_num(1);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+11);
				choiceVO.setMovieInfo_num(16);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertE() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+12);
		choiceVO.setMovieInfo_num(1);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+13);
			choiceVO.setMovieInfo_num(4);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+14);
				choiceVO.setMovieInfo_num(17);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertF() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+15);
		choiceVO.setMovieInfo_num(1);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+16);
			choiceVO.setMovieInfo_num(5);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+17);
				choiceVO.setMovieInfo_num(18);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}


	//@Test
	public void timeInfoInsertG() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+18);
		choiceVO.setMovieInfo_num(2);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+19);
			choiceVO.setMovieInfo_num(5);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+20);
				choiceVO.setMovieInfo_num(19);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertH() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();
		
		choiceVO.setTheater_num(num+21);
		choiceVO.setMovieInfo_num(2);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+22);
			choiceVO.setMovieInfo_num(6);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+23);
				choiceVO.setMovieInfo_num(20);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsertI() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+24);
		choiceVO.setMovieInfo_num(3);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+25);
			choiceVO.setMovieInfo_num(6);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+26);
				choiceVO.setMovieInfo_num(21);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
}
