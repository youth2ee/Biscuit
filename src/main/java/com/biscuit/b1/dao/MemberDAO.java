package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.util.Pager;

@Repository
public class MemberDAO {
	private static final String NAMESPACE = "memberMapper.";
	@Inject
	private SqlSession sqlSession;

	public int memberJoin(MemberVO memberVO) throws Exception {
		return sqlSession.insert(NAMESPACE + "memberJoin", memberVO);
	}

	public MemberVO idCheck(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "idCheck", id);
	}

	public MemberVO memberLogin(MemberVO memberVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "memberLogin", memberVO);
	}

	public int memberUpdate(MemberVO memberVO) throws Exception {
		return sqlSession.update(NAMESPACE + "memberUpdate", memberVO);
	}

	public int memberManagementUpdate(MemberVO memberVO) throws Exception {
		return sqlSession.update(NAMESPACE + "memberManagementUpdate", memberVO);
	}

	public int memberDelete(MemberVO memberVO) throws Exception {
		return sqlSession.delete(NAMESPACE + "memberDelete", memberVO);
	}
	public int memberManagementDelete(String id) throws Exception {
		return sqlSession.delete(NAMESPACE + "memberDelete", id);
	}

	public List<MemberVO> memberManagement(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "memberManagement", pager);
	}

	public int memberCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "memberCount", pager);
	}

	public MemberVO emailCheck(String email) {
		return sqlSession.selectOne(NAMESPACE + "emailCheck", email);
	}

	// mypage
	public List<MovieGradeVO> mypageHeart(MemberVO memberVO) {
		return sqlSession.selectList(NAMESPACE + "mypageHeart", memberVO);
	}

	public List<MovieGradeVO> mypageStar(MemberVO memberVO) {
		return sqlSession.selectList(NAMESPACE + "mypageStar", memberVO);
	}

	public Movie_TicketingVO newest(MemberVO memberVO) {
		return sqlSession.selectOne(NAMESPACE + "newest", memberVO);
	}
}
