package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.service.StoreService;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Inject
	private StoreService storeService;
	
	// 상품 삭제
	@PostMapping("storeDelete")
	public void storeDelete() throws Exception {
		
	}
	
/////////////////////////////////////////////
	// 상품 수정
	@PostMapping("storeUpdate")
	public void storeUpdate(StoreVO storeVO) throws Exception {
		
	}
	
	// 상품 수정 폼
	@GetMapping("storeUpdate")
	public void storeUpdate() throws Exception {
		
	}
/////////////////////////////////////////////
	// 상품 등록
	@PostMapping("storeWrite")
	public void storeWrite(StoreVO storeVO) throws Exception {
		
	}
	
	// 상품 등록 폼
	@GetMapping("storeWrite")
	public void storeWrite() throws Exception {
		
	}
/////////////////////////////////////////////
	// 상품 상세 페이지
	@GetMapping("storeSelect")
	public void storeSelect() throws Exception {
		
	}
/////////////////////////////////////////////
	// 상품 목록
	@GetMapping("storeList")
	public void storeList(StoreVO storeVO, Model model) throws Exception {
		List<StoreVO> list = storeService.storeList(storeVO);
		
		model.addAttribute("list", list);
	}
}
