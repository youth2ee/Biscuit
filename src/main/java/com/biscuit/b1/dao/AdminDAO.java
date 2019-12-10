package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.TimeInfoVO;

@Repository
public class AdminDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "adminMapper.";
	
	public List<CinemaVO> adminLocSelect(CinemaVO cinemaVO) {
		return sqlSession.selectList(NAMESPACE+"adminLocSelect", cinemaVO);
		
	}
	
	public int timeInfoInsertA(TimeInfoVO timeInfoVO) {
		return sqlSession.insert(NAMESPACE+"timeInfoInsertA", timeInfoVO);
	}
	
}
