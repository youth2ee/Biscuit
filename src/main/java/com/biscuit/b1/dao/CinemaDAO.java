package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MemberVO;

@Repository
public class CinemaDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "cinemaMapper.";
	
	public CinemaVO cinema_loc(CinemaVO cinemaVO) {
		return sqlSession.selectOne(NAMESPACE+"cinema_loc", cinemaVO);
		
	}
	
	public List<CinemaVO> cinemaList_loc() {
		return sqlSession.selectList(NAMESPACE+"cinemaList_loc");
	}
	
	public List<CinemaVO> cinemaList_cinema() {
		return sqlSession.selectList(NAMESPACE+"cinemaList_cinema");
	}
	
	public CinemaVO cinemaInfo(CinemaVO cinemaVO) {
		return sqlSession.selectOne(NAMESPACE+"cinemaInfo", cinemaVO);
	}
	
	//cinema timetable
	public List<ChoiceVO> cinemaTime(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"cinemaTime", choiceVO);
	}
	
	
	
}
