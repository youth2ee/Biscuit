package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.SeatVO;
@Repository
public class SeatDAO {
	@Inject
	private SqlSession sqlsession;
	private static final String NAMESPACE = "seatMapper.";
	
	public CinemaVO selectCinema(CinemaVO cinemaVO) throws Exception{
		return sqlsession.selectOne(NAMESPACE+"getTheaterNum",cinemaVO);
	}
	public int seatBooking(SeatVO seatVO) throws Exception{
		System.out.println(seatVO);
		return sqlsession.insert(NAMESPACE+"seatBooking",seatVO);
	}
	public List<SeatVO> bookCheck() throws Exception{
		return sqlsession.selectList(NAMESPACE+"bookCheck");
	}

}
