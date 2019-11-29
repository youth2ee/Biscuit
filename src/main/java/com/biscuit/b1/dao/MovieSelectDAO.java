package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TimeInfoVO;

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
	
	public int timeInfoInsert(TimeInfoVO timeInfoVO) {
		return sqlSession.insert(NAMESPACE+"timeInfoInsert", timeInfoVO);
	}
	
	public int timeInfoInsertA(TimeInfoVO timeInfoVO) {
		return sqlSession.insert(NAMESPACE+"timeInfoInsertA", timeInfoVO);
	}
	
	public int timeInfoInsertB(TimeInfoVO timeInfoVO) {
		return sqlSession.insert(NAMESPACE+"timeInfoInsertB", timeInfoVO);
	}
	
	public int timeInfoInsertC(TimeInfoVO timeInfoVO) {
		return sqlSession.insert(NAMESPACE+"timeInfoInsertC", timeInfoVO);
	}
	

	public int seq_plus() {
		return sqlSession.update(NAMESPACE+"seq_plus");
	}
	
}
