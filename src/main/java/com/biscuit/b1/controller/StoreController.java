package com.biscuit.b1.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.service.StoreService;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Inject
	private StoreService storeService;
	
	// 상품 삭제
	@GetMapping("storeDelete")
	public ModelAndView storeDelete(StoreVO storeVO, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = storeService.storeDelete(storeVO, request);
		
		String msg = "상품 삭제 실패";
		
		if(result>0) {
			msg = "상품 삭제 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "storeList");
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
		mv.addObject("path", "storeList");
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
		mv.addObject("path", "storeList");
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
		storeVO.setStore_package(1);
		
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
