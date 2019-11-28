package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;

@Repository
public class MovieSelectDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "movieMapper.";
	

	
	public List<MovieInfoVO> movieTitleSelect() {
		return sqlSession.selectList(NAMESPACE+"movieTitleSelect");
	}
	
	public List<CinemaVO> movieLocSelect() {
		return sqlSession.selectList(NAMESPACE+"movieLocSelect");
	}
	
	public List<CinemaVO> movieCinemaSelect(CinemaVO cinemaVO) {
		return sqlSession.selectList(NAMESPACE+"movieCinemaSelect", cinemaVO);
	}
	
	
	
}
