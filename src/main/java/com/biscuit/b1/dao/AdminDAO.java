package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.AdminVO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;

@Repository
public class AdminDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "adminMapper.";
	
	public List<CinemaVO> adminLocSelect(CinemaVO cinemaVO) {
		return sqlSession.selectList(NAMESPACE + "adminLocSelect", cinemaVO);
	}

	public MovieInfoVO movie_num(MovieInfoVO movieInfoVO) {
		return sqlSession.selectOne(NAMESPACE + "movie_num", movieInfoVO);
	}

	public TheaterVO theater_num(TheaterVO theaterVO) {
		return sqlSession.selectOne(NAMESPACE + "theater_num", theaterVO);
	}

	public int timeInfoInsertA(ChoiceVO choiceVO) {
		return sqlSession.insert(NAMESPACE + "timeInfoInsertA", choiceVO);
	}

	public int timeInfoInsertB(ChoiceVO choiceVO) {
		return sqlSession.insert(NAMESPACE + "timeInfoInsertB", choiceVO);
	}

	public int timeInfoInsertC(ChoiceVO choiceVO) {
		return sqlSession.insert(NAMESPACE + "timeInfoInsertC", choiceVO);
	}

	public int seq_plus() {
		return sqlSession.update(NAMESPACE + "seq_plus");
	}

	public List<MovieInfoVO> movieList() {
		return sqlSession.selectList(NAMESPACE + "movieList");
	}

	public int cinemaInsert(CinemaVO cinemaVO) {
		return sqlSession.insert(NAMESPACE + "cinemaInsert", cinemaVO);
	}

	public int theaterInsert(CinemaVO cinemaVO) {
		return sqlSession.insert(NAMESPACE + "theaterInsert", cinemaVO);
	}
	
	//list
	public List<CinemaVO> cinemaList() {
		return sqlSession.selectList(NAMESPACE+"cinemaList");
	}

	public List<ChoiceVO> movieTimeList() {
		return sqlSession.selectList(NAMESPACE+"movieTimeList");
	}
	
	//매출
	public AdminVO monthMovieTotal() {
		return sqlSession.selectOne(NAMESPACE+"monthMovieTotal");
	}
	
	public AdminVO monthStoreTotal() {
		return sqlSession.selectOne(NAMESPACE+"monthStoreTotal");
	}
	
	public AdminVO todayMovieRate() {
		return sqlSession.selectOne(NAMESPACE+"todayMovieRate");
	}
	
	public AdminVO theaterTotal() {
		return sqlSession.selectOne(NAMESPACE+"theaterTotal");
	}
	
	public List<AdminVO> cinemaTotal() {
		return sqlSession.selectList(NAMESPACE+"cinemaTotal");
	}
	
	public List<AdminVO> movieTop() {
		return sqlSession.selectList(NAMESPACE+"movieTop");
	}
	
	//listSelct
	public CinemaVO cinemalistSelect (CinemaVO cinemaVO) {
		return sqlSession.selectOne(NAMESPACE+"cinemalistSelect", cinemaVO);
	}
	
	public int cinemalistUpdate(CinemaVO cinemaVO) {
		return sqlSession.update(NAMESPACE+"cinemalistUpdate", cinemaVO);
	}
	
	public int cinemalistDelete(CinemaVO cinemaVO) {
		return sqlSession.delete(NAMESPACE+"cinemalistDelete", cinemaVO);
	}
	

	public int theaterDelete(CinemaVO cinemaVO) {
		return sqlSession.delete(NAMESPACE+"theaterDelete", cinemaVO);
	}

	//movieInsert
	public int movieInsert(MovieDataVO movieDataVO) {
		return sqlSession.insert(NAMESPACE + "movieInsert", movieDataVO);
	}

	public List<MovieDataVO> movieListView() {
		return sqlSession.selectList(NAMESPACE + "movieListView");
	}

	public String lastRelease() {
		return sqlSession.selectOne(NAMESPACE + "lastRelease");
	}

	public int movieInfoInsert(MovieInfoVO movieInfoVO) {
		return sqlSession.insert(NAMESPACE + "movieInfoInsert", movieInfoVO);
	}
	
	public int insertPlot (MovieInfoVO movieInfoVO) {
		return sqlSession.update(NAMESPACE+"insertPlot",movieInfoVO);

	}

	//timelist
	public ChoiceVO movietimeSelect(ChoiceVO choiceVO) {
		return sqlSession.selectOne(NAMESPACE+"movietimeSelect", choiceVO);
	}
	
	public int movietimeUpdate(ChoiceVO choiceVO) {
		return sqlSession.update(NAMESPACE+"movietimeUpdate", choiceVO);
	}
	
	public int movietimeDelete(ChoiceVO choiceVO) {
		return sqlSession.delete(NAMESPACE+"movietimeDelete", choiceVO);
	}
	
	
}
