package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.model.MemberVO;

public class MemberTest {

	@Inject
	private MemberDAO memberDAO;
	
	@Test
	public void test() throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("newni123");
		memberVO.setPw("1234");
		memberVO.setName("임윤희");
		memberVO.setEmail("email");
		memberVO.setAddress("address");
		memberVO.setPost("post");
		memberVO.setPhone("010-4735-2699");
		memberVO.setBirth("2019-12-09");
		memberVO.setGender("F");
		
		int result = memberDAO.memberJoin(memberVO);
		assertEquals(1, result);
	}

}
