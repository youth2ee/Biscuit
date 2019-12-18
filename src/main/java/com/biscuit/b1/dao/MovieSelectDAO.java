package com.biscuit.b1.dao;

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
	
	public List<CinemaVO> movieCinemaSelect(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"movieCinemaSelect", choiceVO);
	}
	
	//선택한 영화에 따른 영화관
	public List<ChoiceVO> movieChoice(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"movieChoice", choiceVO);
	}
	
	//theater num
	public ChoiceVO theaterSelect(ChoiceVO choiceVO) {
		return sqlSession.selectOne(NAMESPACE+"theaterSelect", choiceVO);
	}
	
	//날짜
	public List<TimeInfoVO> movieDateSelect(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"movieDateSelect",choiceVO);
	}
	
	public List<ChoiceVO> movieTimeSelect(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"movieTimeSelect", choiceVO);
	}
	
	//seat
	public List<ChoiceVO> seatCount(ChoiceVO choiceVO) {
		return sqlSession.selectList(NAMESPACE+"seatCount", choiceVO);
	}
	
	
	//movieList 페이지
	public List<MovieInfoVO> movieList() {
		return sqlSession.selectList(NAMESPACE+"movieList");
	}
}