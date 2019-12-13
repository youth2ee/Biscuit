package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.MovieInfoVO;

@Repository
public class MovieDAO {
	private static final String NAMESPACE = "movieMapper.";
	@Inject
	private SqlSession sqlSession;

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
}
