package com.biscuit.b1.model;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MemberDAO;

@Service
public class MemberService {
	@Inject
	private MemberDAO memberDAO;
	
	public int memberJoin(MemberVO memberVO) throws Exception{
		return memberDAO.memberJoin(memberVO);
	}
	public MemberVO idCheck(String id) throws Exception{
		return memberDAO.idCheck(id);
	}
}