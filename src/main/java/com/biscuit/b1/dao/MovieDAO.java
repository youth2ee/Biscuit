package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.MovieInfoVO;

@Repository
public class MovieDAO {
	private static final String NAMESPACE = "movieMapper.";
	@Inject
	private SqlSession sqlSession;
	
	//home
	public List<MovieInfoVO> homeposter() {
		return sqlSession.selectList(NAMESPACE+"homeposter");
	}
	
	
	//
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
	
	//movieList
	public List<MovieGradeVO> movieGradeTotal(MemberVO memberVO) {
		return sqlSession.selectList(NAMESPACE+"movieGradeTotal", memberVO);
	}
	
	public MovieGradeVO movieGradeSelect(MovieGradeVO movieGradeVO) {
		return sqlSession.selectOne(NAMESPACE+"movieGradeSelect", movieGradeVO);
	}
	
	public int movieGradeInsert(MovieGradeVO movieGradeVO) {
		return sqlSession.insert(NAMESPACE+"movieGradeInsert", movieGradeVO);
	}
	
	public int movieHeartUpdate(MovieGradeVO movieGradeVO) {
		return sqlSession.update(NAMESPACE+"movieHeartUpdate", movieGradeVO);
	}
	
	public int movieStarUpdate (MovieGradeVO movieGradeVO) {
		return sqlSession.update(NAMESPACE+"movieStarUpdate", movieGradeVO);
	}
	public List<MovieGradeVO> searchForHeart(String id) {
		return sqlSession.selectList(NAMESPACE+"searchForHeart",id);
	}
	
	public int movieInfoStarUpdate(MovieGradeVO movieGradeVO) {
		return sqlSession.update(NAMESPACE+"movieInfoStarUpdate", movieGradeVO);
	}
	
	public List<MovieGradeVO> myGrade(String id){
		return sqlSession.selectList(NAMESPACE+"myGrade",id);
	}
	
}
