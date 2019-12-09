package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.MemberService;
import com.biscuit.b1.model.MemberVO;

@Controller
@RequestMapping("member/**")
public class MemberController {

	@Inject
	private MemberService memberService;

	@GetMapping("memberJoin")
	public void memberJoin() throws Exception {

	}

	@PostMapping("memberJoin")
	public ModelAndView memberJoin(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberJoin(memberVO);
		String msg = "회원가입 실패";
		if (result > 0)
			msg = "회원가입 완료";

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("memberLogin")
	public void memberLogin() throws Exception {

	}

	@GetMapping("memberManagement")
	public void memberManagement() throws Exception {

	}

	@GetMapping("myPage")
	public void myPage(MemberVO memberVO) throws Exception {

	}

	@GetMapping("idCheck")
	public ModelAndView idCheck(String id) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = memberService.idCheck(id);
		if (memberVO == null) {
			mv.addObject("result",1);
		} else 
			mv.addObject("result",0);
		return mv;
	}

}
