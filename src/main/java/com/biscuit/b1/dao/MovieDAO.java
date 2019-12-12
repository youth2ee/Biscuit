package com.biscuit.b1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.MovieDataVO;

@Repository
public class MovieDAO {
	private static final String NAMESPACE = "movieMapper.";
	@Inject
	private SqlSession sqlSession;

	public int movieInsert(MovieDataVO movieDataVO) {
		return sqlSession.insert(NAMESPACE+"movieInsert",movieDataVO);
	}
}
