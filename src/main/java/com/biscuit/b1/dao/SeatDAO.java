package com.biscuit.b1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CinemaVO;
@Repository
public class SeatDAO {
	@Inject
	private SqlSession sqlsession;
	private static final String NAMESPACE = "seatMapper.";
	
	public CinemaVO selectCinema(CinemaVO cinemaVO) throws Exception{
		return sqlsession.selectOne(NAMESPACE+"getTheaterNum",cinemaVO);
	}

}
