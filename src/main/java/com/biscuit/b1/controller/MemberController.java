package com.biscuit.b1.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.NewestVO;
import com.biscuit.b1.service.MemberService;
import com.biscuit.b1.util.Pager;

@Controller
@RequestMapping("member/**")
public class MemberController {

	@Inject
	private MemberService memberService;

	@GetMapping("memberLogout")
	public ModelAndView memberLogout(HttpSession session) throws Exception {
		String path = "../";
		String redirectURI = (String)session.getAttribute("redirectURI");
		// 로그아웃
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		
		if(redirectURI != null) {
			path = redirectURI;
		}
		
		mv.addObject("msg", "로그아웃되었습니다.");
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}

	@PostMapping("memberDelete")
	public ModelAndView memberDelete(String pwCheck, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String sessionPw = memberVO.getPw();
		if (sessionPw.equals(pwCheck)) {
			int result = memberService.memberDelete(memberVO);
			String msg = "탈퇴에 실패했습니다.";
			String path = "./mypage/myPage";
			if (result > 0) {
				msg = "정상적으로 탈퇴하였습니다.";
				path = "../";
				session.invalidate();
			}
			mv.addObject("msg", msg);
			mv.addObject("path", path);
			mv.setViewName("common/common_result");
			return mv;
		} else {
			mv.addObject("msg", "비밀번호가 일치하지 않습니다");
			mv.addObject("path", "./mypage/myPage");
			mv.setViewName("common/common_result");
			return mv;
		}
	}

	@GetMapping("memberDelete")
	public void memberDelete() throws Exception {
	}

	@PostMapping("memberUpdate")
	public ModelAndView memberUpdate(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberUpdate(memberVO);
		String msg = "업데이트 실패";
		String path = "./mypage/myPage";
		if (result > 0) {
			msg = "업데이트 완료";
			path = "../";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("memberUpdate")
	public void memberUpdate() throws Exception {

	}

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
	public void memberLogin(HttpServletRequest request) {
		//System.out.println(request.getHeader("Referer"));
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
	}

	@GetMapping("memberJoin2")
	public void memberJoin2() {
	}
	
	@PostMapping("movieLogin")
	public String movieLogin(ChoiceVO choiceVO, HttpSession session) {
		String path = "";

		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		if (memberVO != null) {
			// 로그인 되어 있는 상태
			path = "redirect:../seat/seatSelect";
		} else {
			// 로그인 안되어 있는 상태
			path = "redirect:./memberLogin";
		}

		session.setAttribute("ChoiceVO", choiceVO);

		return path;
	}

	@PostMapping("memberLogin")
	public ModelAndView memberLogin(ChoiceVO choiceVO, MemberVO memberVO, HttpSession session) throws Exception {
		//System.out.println(session.getAttribute("redirectURI"));
		
		ModelAndView mv = new ModelAndView();
		String msg = "";
		String path = "";
		String redirectURI = (String)session.getAttribute("redirectURI");
		
		choiceVO = (ChoiceVO) session.getAttribute("ChoiceVO");

		// 로그인이 안된상태에서 로그인하기 : 아이디 값이 넘어오면 로그인이 안되어 있는 상태
		// if (memberVO.getId() != null) {
		// 받아온 아이디 값 보내기 : 로그인 성공실패 판단
		memberVO = memberService.memberLogin(memberVO);

		// 받아 왔으니 로그인 성공함
		if (memberVO != null) {
			msg = "로그인 완료";
			session.setAttribute("member", memberVO);
			// 예매후 로그인 성공시
			if (choiceVO != null) {
				path = "../seat/seatSelect";

			}else if(redirectURI != null){
				path = redirectURI;
			}else { // 일반로그인 성공시
				path = "../";
			}
		}

		// 못받았으니 로그인 실패함
		if (memberVO == null) {
			msg = "로그인 실패";
			// 예매후 로그인 실패시
			if (choiceVO != null) {
				path = "../movie/movieSelect";
			}else if(redirectURI != null){
				path = redirectURI;
			} else {
				path = "./memberLogin";
			}

		}
		// }

		mv.addObject("path", path);
		mv.addObject("msg", msg);
		mv.setViewName("common/common_result");
		return mv;
	}

	@PostMapping("memberManagementAdd")
	public ModelAndView memberManagementAdd(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberJoin(memberVO);
		String msg = "멤버추가 실패";
		if (result > 0)
			msg = "멤버추가 완료";
		mv.addObject("msg", msg);
		mv.addObject("path", "./memberManagement");
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("memberManagement")
	public ModelAndView memberManagement(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<MemberVO> memberVOs = memberService.memberManagement(pager);
		for (MemberVO memberVO2 : memberVOs) {
			memberVO2.setBirth(memberVO2.getBirth().substring(0, 10));
			memberVO2.setSignIn_date(memberVO2.getSignIn_date().substring(0, 10));
		}
		System.out.println(memberVOs.size());
		mv.addObject("members", memberVOs); // 77나오는데 jsp에선 10으로 찍힘 (해결하기)
		mv.addObject("pager", pager);
		return mv;
	}

	@PostMapping("memberManagementUpdate")
	public ModelAndView memberManagementUpdate(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberManagementUpdate(memberVO);
		String msg = "업데이트 실패";
		if (result > 0) {
			msg = "업데이트 완료";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "./memberManagement");
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("memberManagementDelete")
	public ModelAndView memberManagementDelete(String id, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberManagementDelete(id);
		String msg = "탈퇴에 실패했습니다.";
		if (result > 0) {
			msg = "정상적으로 탈퇴 처리 되었습니다.";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "./memberManagement");
		mv.setViewName("common/common_result");
		return mv;
	}

	@GetMapping("idCheck")
	public ModelAndView idCheck(String id) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = memberService.idCheck(id);
		if (memberVO == null) {
			mv.addObject("result", 1);
		} else
			mv.addObject("result", 0);
		return mv;
	}

	@GetMapping("emailCheck")
	public ModelAndView emailCheck(String email) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = memberService.emailCheck(email);
		if (memberVO == null) {
			mv.addObject("result", 1);
		} else
			mv.addObject("result", 0);
		return mv;
	}

	// mypage
	@GetMapping("/mypage/myPage")
	public void myPage(HttpSession session, Model model,HttpServletRequest request) throws Exception {
		String bookCheck = request.getParameter("bookCheck");
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO) session.getAttribute("member");
		System.out.println(memberVO.getId());
		NewestVO newestVO = memberService.newest(memberVO);
		newestVO.setId(memberVO.getId());
		int cancelCheck = memberService.cancelCheck(newestVO);
		ModelAndView mv = new ModelAndView();
		String book_date = newestVO.getBook_date().substring(0, 10); 
		String book_date_str =  book_date.substring(0,4) +"년 "+ book_date.substring(5,7) +"월 "+ book_date.substring(8)+"일 "; // 예매내역 출력용
		book_date = book_date.substring(0,4) + book_date.substring(5,7) + book_date.substring(8); // 오늘날짜랑 예매날짜 비교용
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		String time = format.format(today);
		String year = time.substring(0, 4);
		String month = time.substring(4, 6);
		String date = time.substring(6, 8);
		time = year + month + date; // 오늘날짜
		String compare = null;
		if(Integer.parseInt(time) > Integer.parseInt(book_date))
			compare = "1";
		else
			compare = "0";
			
		newestVO.setBook_date(book_date_str);
		String timeInfo_start_str = newestVO.getTimeInfo_start();
		timeInfo_start_str = timeInfo_start_str.substring(0,2) + "시 "+timeInfo_start_str.substring(3) +"분";
		newestVO.setTimeInfo_start(timeInfo_start_str);
		model.addAttribute("newestBook", newestVO);
		model.addAttribute("book_date" , book_date);
		model.addAttribute("isCancel" , cancelCheck);
		model.addAttribute("bookCheck" , bookCheck);
		model.addAttribute("compare" , compare);
		System.out.println("출력1:" + newestVO.getBook_date()); // 여기 timeInfo_start로 바꾸기 (db설정손봐야함)
		System.out.println("출력2:" + newestVO.getMovieInfo_title());
		System.out.println("출력3:" + newestVO.getTheater_name());
		System.out.println("출력4:" + newestVO.getCinema_name());
		System.out.println("출력5:" + newestVO.getTimeInfo_start());
		System.out.println("출력6:" + cancelCheck);
		//model.addAttribute("member", memberVO);
		
		

	}
	@PostMapping("/mypage/myPage")
	public void myPage2(HttpSession session, Model model,HttpServletRequest request) throws Exception {
		/*
		 * Movie_TicketingVO movie_TicketingVO =
		 * memberService.getMovieTicketingVO(newestVO);
		 * memberService.seatDelete(movie_TicketingVO);
		 */
	}

	@GetMapping("/mypage/myPage_store_res")
	public void myPage_store_res() {
		
		
		
	}

	@GetMapping("/mypage/myPage_movie_res")
	public void myPage_movie_res(HttpSession session, Model model,HttpServletRequest request) {
		String bookCheck = request.getParameter("bookCheck");
		MemberVO memberVO = new MemberVO();
		memberVO = (MemberVO) session.getAttribute("member");
		System.out.println(memberVO.getId());
		List<NewestVO> newestVOs = memberService.newestThree(memberVO);
		for(int i = 0; i < newestVOs.size();i++) {
			NewestVO newestVO = newestVOs.get(i);
			System.out.println(newestVO.getMovieInfo_title());
			String book_date = newestVO.getBook_date().substring(0, 10); 
			String book_date_str =  book_date.substring(0,4) +"년 "+ book_date.substring(5,7) +"월 "+ book_date.substring(8)+"일 "; // 예매내역 출력용
			newestVO.setBook_date(book_date_str);
			if(newestVO.getMovieInfo_title().equals("신비아파트 극장판 하늘도깨비 대 요르문간드"))
				newestVO.setMovieInfo_title("신비아파트");
			String timeInfo_start_str = newestVO.getTimeInfo_start();
			timeInfo_start_str = timeInfo_start_str.substring(0,2) + "시 "+timeInfo_start_str.substring(3) +"분";
			newestVO.setTimeInfo_start(timeInfo_start_str);
			
		}
		model.addAttribute("newestVOs", newestVOs);
		//model.addAttribute("member", memberVO);
		
		
	}

	@GetMapping("/mypage/myPage_movie_star")
	public void myPage_movie_star(HttpSession session, Model model) {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		List<MovieGradeVO> starList = memberService.mypageStar(memberVO);

		model.addAttribute("starList", starList);
	}

	@GetMapping("/mypage/myPage_movie_heart")
	public void myPage_movie_heart(HttpSession session, Model model) {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		List<MovieGradeVO> heartList = memberService.mypageHeart(memberVO);
		model.addAttribute("heartList", heartList);
	}

	@GetMapping("/mypage/myPage_member_update")
	public void myPage_member_update() {
	}

	@GetMapping("/mypage/myPage_cinema")
	public void myPage_cinema() {
	}
	
	@PostMapping("mypage/myPage_member_update")
	public ModelAndView memberUpdate2(MemberVO memberVO,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberUpdate(memberVO);
		String msg = "업데이트 실패";
		String path = "./myPage_member_update";
		if (result > 0) {
			session.setAttribute("member", memberVO);
			msg = "업데이트 완료";
			path = "./myPage_member_update";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}

}
