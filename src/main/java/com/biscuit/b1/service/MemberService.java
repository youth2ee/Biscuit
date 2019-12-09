package com.biscuit.b1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MemberDAO;
import com.biscuit.b1.model.MemberVO;

@Service
public class MemberService {
	@Inject
	private MemberDAO memberDAO;

	public int memberJoin(MemberVO memberVO) throws Exception {
		return memberDAO.memberJoin(memberVO);
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

	public int memberDelete(MemberVO memberVO) throws Exception {
		return memberDAO.memberDelete(memberVO);
	}
}
