package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.TimeInfoVO;

public class AdminTest {

	@Inject
	private AdminDAO adminDAO;
	


	@Test
	public void test() throws Exception {
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		timeInfoVO.setTheater_num(1);
		timeInfoVO.setMovieInfo_num(1);
		timeInfoVO.setTimeInfo_date("19-12-02");
		
		int result = adminDAO.timeInfoInsertA(timeInfoVO);
		
		assertNotEquals(result, 0);
	}
	
	
}
