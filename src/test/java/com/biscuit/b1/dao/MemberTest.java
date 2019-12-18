package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.MemberVO;

public class MemberTest extends TestAbstractCase {

	@Inject
	private MemberDAO memberDAO;

	@Test
	public void test() throws Exception {
		for (int i = 1; i < 101; i++) {
			MemberVO memberVO = new MemberVO();
			memberVO.setId("test" + i);
			memberVO.setPw("test");
			memberVO.setName("테스트" + i);
			memberVO.setEmail("email" + i + "@email.com");
			memberVO.setAddress("address");
			memberVO.setPost("post");
			memberVO.setPhone("010-1234-5678");
			memberVO.setBirth("2019-12-09");
			memberVO.setGender("F");
			memberVO.setGrade(5);
			memberVO.setGrade_point(0);
			memberVO.setSignIn_date("2019-12-18");
			memberDAO.memberJoin(memberVO);
		}
	}

}
