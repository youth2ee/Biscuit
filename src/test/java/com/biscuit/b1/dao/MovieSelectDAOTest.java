package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.TimeInfoVO;

public class MovieSelectDAOTest extends TestAbstractCase {
	
	@Inject
	private MovieSelectDAO movieSelectDAO;

	@Test
	public void timeInfoInsert() {
		TimeInfoVO timeInfoVO = new TimeInfoVO();
		
		int theaterNum = 2;
		timeInfoVO.setTheater_num(theaterNum);
		
		int movieNum = 5;
		timeInfoVO.setMovieInfo_num(movieNum);
		
		int num = movieSelectDAO.timeSelect(movieNum);
		//상영시간 : num
		
		String lastTime = 
		//전 영화의 마지막 시간
		
		timeInfoVO.setTimeInfo_date("2019-12-01");
		
		//시간더하기
		String today = null;
		Date date = new Date();
		
		SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.MINUTE, 10);
		
		today = form.format(cal.getTime());
		
		
		
		
		
		
		timeInfoVO.setTimeInfo_start(timeInfo_start);
		timeInfoVO.setTimeInfo_end(timeInfo_end);
		
	}

}
