package com.biscuit.b1.dao;

import java.awt.Choice;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
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
	
	//선택한 영화에 따른 영화관
	public List<ChoiceVO> movieChoice(MovieInfoVO movieInfoVO) {
		return sqlSession.selectList(NAMESPACE, movieInfoVO);
	}
	
	
	//날짜
	public List<TimeInfoVO> dateSelect(TheaterVO theaterVO) {
		return sqlSession.selectList(NAMESPACE+"dateSelect", theaterVO);
	}
	
	public List<TimeInfoVO> movieDateSelect(TheaterVO theaterVO) {
		return sqlSession.selectList(NAMESPACE+"movieDateSelect",theaterVO);
	}
	
	public List<TimeInfoVO> movieTimeSelect(TheaterVO theaterVO) {
		return sqlSession.selectList(NAMESPACE+"movieTimeSelect", theaterVO);
	}
	
	
	
	//db에 영화관 넣기
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
