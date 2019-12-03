package com.biscuit.b1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.biscuit.b1.model.CinemaVO;

public class SeatDAO {

	@Inject
	private SqlSession sqlSession;
	public final static String NAMESPACE = "seatMapper.";

	public CinemaVO cinemaSelect() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"cinema_select");
	}

}
