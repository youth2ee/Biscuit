package com.biscuit.b1.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.CartListVO;
import com.biscuit.b1.model.CartVO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MyOrderVO;
import com.biscuit.b1.model.OrderDetailVO;
import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.service.StoreService;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Inject
	private StoreService storeService;
	
	//주문 정보
	@PostMapping("myOrder")
	public void myOrder(HttpSession session, MyOrderVO myOrderVO, OrderDetailVO orderDetailVO) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		String memberId = memberVO.getId();
		
		storeService.orderInsert(myOrderVO);
		storeService.detailInsert(orderDetailVO);
		
	}
	
	//카트 진입시 로그인 여부
	@ResponseBody
	@PostMapping("cartLoginCheck")
	public int cartLoginCheck(HttpSession session) throws Exception {
		int result = 0;
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		//로그인 O
		if(memberVO != null) {
			result = 1;
		}
		
		return result;
	}
	
	//카트 삭제
	@ResponseBody
	@PostMapping(value = "cartDelete")
	public int cartDelete(@RequestParam(value="list[]") List<String> list, CartVO cartVO, HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		int result = 0;
		int cart_num = 0;
		
		if(memberVO != null) {
			cartVO.setMember_id(memberVO.getId());
			
			for(String i : list) {
				cart_num = Integer.parseInt(i);
				
				cartVO.setCart_num(cart_num);
				
				result = storeService.cartDelete(cartVO);
			}
		}
		return result;
	}
	
	//카트 수정
	@ResponseBody
	@PostMapping("cartUpdate")
	public int cartUpdate(CartListVO cartListVO, HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
				
		int result = 0;
		
		if(memberVO != null) {
			cartListVO.setMember_id(memberVO.getId());
			result = storeService.cartUpdate(cartListVO);
		}
		
		//cartListVO.setMember_id("a");
		//result = storeService.cartUpdate(cartListVO);
		
		return result;
	}
	
	//카트 리스트
	@GetMapping("cartList")
	public void cartList(CartListVO cartListVO, HttpSession session, Model model) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		cartListVO.setMember_id(memberVO.getId());
		//cartListVO.setMember_id("a");
		
		List<CartListVO> cartList = storeService.cartList(cartListVO);
		
		model.addAttribute("cartList", cartList);
	}
/////////////////////////////////////////////	
	//카트 동일 상품 존재 여부 조회
	@ResponseBody
	@PostMapping("cartSelect")
	public Map<String, Integer> cartSelect(CartVO cartVO, HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		int result = 0; //로그인 X
		
		if(memberVO != null) {
			cartVO.setMember_id(memberVO.getId());
			
			//cartVO.setMember_id("a");
			cartVO = storeService.cartSelect(cartVO);
			
			if(cartVO != null) {
				int cart_num = cartVO.getCart_num();
				int cart_amount = cartVO.getCart_amount();
				//System.out.println(cart_num);
				map.put("cart_num", cart_num);
				map.put("cart_amount", cart_amount);
				result = 1; //동일 상품 존재 O
			}else {
				result = 2; //동일 상품 존재 X
			}
			map.put("result", result);
		}
		return map;
	}
/////////////////////////////////////////////		
	//카트 담기 
	@ResponseBody
	@PostMapping("cartInsert")
	public int cartInsert(CartVO cartVO, HttpSession session) throws Exception {
		//System.out.println(1);
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		int result = 0;
		
		if(memberVO != null) {
			cartVO.setMember_id(memberVO.getId());
			result = storeService.cartInsert(cartVO);
		}
		
		//cartVO.setMember_id("a");
		//result = storeService.cartInsert(cartVO);
		
		return result;
	}
	
/////////////////////////////////////////////	
	// 상품 삭제
	@PostMapping("storeDelete")
	public ModelAndView storeDelete(StoreVO storeVO, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = storeService.storeDelete(storeVO, request);
		
		String msg = "상품 삭제 실패";
		
		if(result>0) {
			msg = "상품 삭제 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/admin_storeList");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
/////////////////////////////////////////////
	// 상품 수정
	@PostMapping("storeUpdate")
	public ModelAndView storeUpdate(StoreVO storeVO, MultipartFile file, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		//System.out.println(request.getParameter("store_img"));
		//System.out.println(storeVO.getStore_img());

		int result = storeService.storeUpdate(storeVO, file, request);
		
		String msg = "상품 업데이트 실패";
		
		if(result>0) {
			msg = "상품 업데이트 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/admin_storeList");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	// 상품 수정 폼
	@GetMapping("storeUpdate")
	public void storeUpdate(StoreVO storeVO, Model model) throws Exception {
		storeVO = storeService.storeSelect(storeVO);
		
		model.addAttribute("update", storeVO);
	}
/////////////////////////////////////////////
	// 상품 등록
	@PostMapping("storeWrite")
	public ModelAndView storeWrite(StoreVO storeVO, MultipartFile file, HttpSession session, HttpServletRequest request) throws Exception {
		//System.out.println("controller");
		
		ModelAndView mv = new ModelAndView();
		int store_package = Integer.parseInt(request.getParameter("store_package"));
		storeVO.setStore_package(store_package);
		
		//System.out.println(store_package);
		
		int result = storeService.storeWrite(storeVO, file, session);
		String msg = "상품 등록 실패";
		
		if(result>0) {
			msg = "상품 등록 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/admin_storeList");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	// 상품 등록 폼
	@GetMapping("storeWrite")
	public void storeWrite() throws Exception {
		
	}
/////////////////////////////////////////////
	// 상품 상세 페이지
	@GetMapping("storeSelect")
	public void storeSelect(StoreVO storeVO, Model model) throws Exception {
		storeVO = storeService.storeSelect(storeVO);
		
		model.addAttribute("select", storeVO);
	}
/////////////////////////////////////////////
	// 상품 목록
	@GetMapping("storeList")
	public void storeList(StoreVO storeVO, Model model) throws Exception {
		if(storeVO.getStore_package() == 0) {
			storeVO.setStore_package(1);
		}
		List<StoreVO> list = storeService.storeList(storeVO);
		
		model.addAttribute("list", list);
	}
	
	//상품 탭 변경시 목록
	@GetMapping("storeList2")
	public ModelAndView storeList2(StoreVO storeVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//System.out.println(storeVO.getStore_package());
		//if(storeVO.getStore_package() == 0) {
		//	storeVO.setStore_package(1);
		//}
		//System.out.println(storeVO.getStore_package());
		
		List<StoreVO> list = storeService.storeList(storeVO);
		
		//System.out.println(list.get(0).getStore_name());
		
		mv.addObject("list", list);
		mv.setViewName("common/store_result");
		
		return mv;
	}
}
