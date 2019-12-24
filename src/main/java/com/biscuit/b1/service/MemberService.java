package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MemberDAO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.NewestVO;
import com.biscuit.b1.util.Pager;

@Service
public class MemberService {
	@Inject
	private MemberDAO memberDAO;

	public int memberJoin(MemberVO memberVO) throws Exception {
		return memberDAO.memberJoin(memberVO);
	}
	
	public MemberVO emailCheck(String email) throws Exception {
		return memberDAO.emailCheck(email);
	}
	
	public MemberVO idCheck(String id) throws Exception {
		return memberDAO.idCheck(id);
	}

	public MemberVO memberLogin(MemberVO memberVO) throws Exception {
		return memberDAO.memberLogin(memberVO);
	}

	public int memberUpdate(MemberVO memberVO) throws Exception {
		return memberDAO.memberUpdate(memberVO);
	}

	public int memberManagementUpdate(MemberVO memberVO) throws Exception {
		return memberDAO.memberManagementUpdate(memberVO);
	}

	public int memberDelete(MemberVO memberVO) throws Exception {
		return memberDAO.memberDelete(memberVO);
	}
	
	public int memberManagementDelete(String id) throws Exception {
		return memberDAO.memberManagementDelete(id);
	}

	public List<MemberVO> memberManagement(Pager pager) throws Exception {
		pager.makeRow();
		pager.makePager(memberDAO.memberCount(pager));
		
		return memberDAO.memberManagement(pager);
	}
	
	public int memberCount(Pager pager) throws Exception {
		return memberDAO.memberCount(pager);
	}
	
	
	//mypage
	public List<MovieGradeVO> mypageHeart (MemberVO memberVO) {
		return memberDAO.mypageHeart(memberVO);
	}
	
	public List<MovieGradeVO> mypageStar(MemberVO memberVO) {
		return memberDAO.mypageStar(memberVO);
	}
	
	public NewestVO newest(MemberVO memberVO) {
		return memberDAO.newest(memberVO);
	}
	
	public List<NewestVO> newestThree(MemberVO memberVO) {
		return memberDAO.newestThree(memberVO);
	}
	
	public Movie_TicketingVO getMovieTicketingVO(NewestVO newestVO) {
		return memberDAO.getMovieTicketingVO(newestVO);
	}
	
	//memberGrade
	public MemberVO memberGrade(MemberVO memberVO) {
		return memberDAO.memberGrade(memberVO);
	}
	public int cancelCheck(NewestVO newestVO) {
		return memberDAO.cancelCheck(newestVO);
	}
	
	public int seatDelete (Movie_TicketingVO movie_TicketingVO) {
		return memberDAO.seatDelete(movie_TicketingVO);
	}

}
