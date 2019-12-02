package com.biscuit.b1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biscuit.b1.service.StoreService;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@Inject
	private StoreService storeService;
	
	@GetMapping("storeWrite")
	public void storeWrite() throws Exception {
		
	}
	
	@GetMapping("storeList")
	public void storeList() throws Exception {
		
	}
}
