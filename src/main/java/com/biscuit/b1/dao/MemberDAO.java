package com.biscuit.b1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.MemberVO;

@Repository
public class MemberDAO {
	private static final String NAMESPACE = "memberMapper.";
	@Inject
	private SqlSession sqlSession;
	
	public int memberJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"memberJoin",memberVO);
	}
	public MemberVO idCheck(String id) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"idCheck",id);
	}
}
